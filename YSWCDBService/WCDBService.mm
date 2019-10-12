//
//  WCDBService.m
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBService_WCTDatabase.h"
#import "WCDBTableBase.h"
#import "WCDBTableCoding.h"

#import <dlfcn.h>
#import <mach-o/dyld.h>
#import <mach-o/loader.h>
#import <mach-o/ldsyms.h>
#import <mach-o/getsect.h>

#ifndef __LP64__
#define section_ section
#define mach_header_ mach_header
#else
#define section_ section_64
#define mach_header_ mach_header_64
#endif


#define __SQLITE_CORRUPT (11)
#define __SQLITE_NOTADB  (26)


#pragma mark -

static void wcdb_table_class_in_dyld(const struct mach_header * mhp, void (^block) (NSString *className)) {
    const struct mach_header_ *header = (mach_header_*)mhp;
    unsigned long size = 0;
    uintptr_t *data = (uintptr_t *)getsectiondata(header, "__DATA", "__WCDBTCLASS", &size);
    if (data && size > 0) {
        unsigned long count = size / sizeof(struct WCDBTableClassInfo);
        struct WCDBTableClassInfo *items = (struct WCDBTableClassInfo *)data;
        for (int index = 0; index < count; index ++) {
            NSString *className = [NSString stringWithUTF8String:items[index].className];
            if (!className) { continue; }
            if (block) {
                block(className);
            }
        }
    }
}

static void dyld_callback(const struct mach_header * mhp, intptr_t slide)
{
    wcdb_table_class_in_dyld(mhp, ^(NSString *className) {
        [WCDBService registerTableClass:className];
    });
}

//__attribute__((constructor))
void loadWCDBTableClass() {
    _dyld_register_func_for_add_image(dyld_callback);
}


#pragma mark -


static NSMutableArray * __allTableClass = nil;

@interface WCDBService()
{
    BOOL repairing;
}

//@property (nonatomic, strong) NSMutableArray *allTableClass;

@end

@implementation WCDBService

- (instancetype)sharedInstance
{
    return [[self class] sharedInstance];
}

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static id __singleton__;
    dispatch_once( &once, ^{ __singleton__ = [[self alloc] init]; } );
    return __singleton__;
}

- (instancetype)init
{
    if (self = [super init]) {
        
        [self setDBRootPath];
        
        [self setConfig];
        
        // 初始化一个默认的数据库
        // [self setDBName:nil];
    }
    return self;
}

- (void)setDBRootPath
{
    if (!_dbRootPath) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//        NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
        NSString *docDir = [paths objectAtIndex:0];
//        NSString *path = [[docDir stringByAppendingPathComponent:version] stringByAppendingPathComponent:@"WCDB"];
        NSString *path = [docDir stringByAppendingPathComponent:@"WCDB"];
        _dbRootPath = path;
    }
}

- (void)setConfig
{
    // Error Monitor
    [WCTStatistics SetGlobalErrorReport:^(WCTError *error) {
        NSLog(@"[WCDB]%@", error);
        //数据库损坏 需要进行修复处理
        if (error.type == WCTErrorTypeSQLite && (error.code == __SQLITE_CORRUPT || error.code == __SQLITE_NOTADB)) {
            NSLog(@"数据库损坏了......");
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                __weak __typeof__(self) weakSelf = self;
                [self setDBName:self.dbName block:^{
                    __typeof__(self) self = weakSelf;
                    [self.wcdb removeFilesWithError:nil];
                }];
            });
//            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//               [self repair];
//            });
        }
    }];
    
    // 全局监控
//    [WCTStatistics SetGlobalPerformanceTrace:^(WCTTag tag, NSDictionary<NSString *, NSNumber *> *sqls, NSInteger cost) {
//        NSLog(@"GlobalSQLPerformanceTrace Tag : %d", tag);
//        [sqls enumerateKeysAndObjectsUsingBlock:^(NSString *sql, NSNumber *count, BOOL *) {
//            NSLog(@"GlobalSQLPerformanceTrace SQL : %@ Count: %d", sql, count.intValue);
//        }];
//        NSLog(@"GlobalSQLPerformanceTrace Total cost %ld nanoseconds", (long) cost);
//    }];

    //SQL Execution Monitor
//    [WCTStatistics SetGlobalSQLTrace:^(NSString *sql) {
//        NSLog(@"GlobalSQLTrace SQL : %@", sql);
//    }];
    
    
    //unregister
//    [WCTStatistics SetGlobalPerformanceTrace:nil];
//    [WCTStatistics SetGlobalErrorReport:nil];
//    [WCTStatistics SetGlobalSQLTrace:nil];
}

- (void)setDBName:(NSString *)name
{
    [self setDBName:name block:nil];
}

- (void)setDBName:(NSString *)name block:(void(^)(void))block
{
    NSString *dbName = [self getDBName:name];
    if (_dbName && [dbName isEqualToString:_dbName]) {
        return;//相同的就不用再切换了
    }
    
    _dbName = dbName;

    if (_wcdb) {
        [_wcdb close:block];
    }
    
    _dbPath = [self getPathWithName:_dbName];
    
    [self cofigDB];
    
    [self configTable];
}

- (void)cofigDB
{
    _wcdb = [[WCTDatabase alloc] initWithPath:_dbPath];

    //set config
    [_wcdb setConfig:^BOOL(std::shared_ptr<WCDB::Handle> handle, WCDB::Error &error) {
        return handle->exec(WCDB::StatementPragma().pragma(WCDB::Pragma::SecureDelete, YES));
    } forName:_dbName withOrder:1];
    
    //run unwrapped SQL
    //    [_wcdb exec:WCDB::StatementPragma().pragma(WCDB::Pragma::CaseSensitiveLike, true)];
    
    //    //get value from unwrapped SQL
    //    {
    //        WCTStatement *statement = [_wcdb prepare:WCDB::StatementPragma().pragma(WCDB::Pragma::CacheSize)];
    //        if (statement && [statement step]) {
    //            NSLog(@"Cache size %@", [statement getValueAtIndex:0]);
    //        }
    //    }
    
    // 对于特定的数据库，该接口会覆盖全局监控的注册。
    
//#ifdef DEBUG
//    [_wcdb setPerformanceTrace:^(WCTTag tag, NSDictionary<NSString *,NSNumber *> *sqls, NSInteger cost) {
//        NSLog(@"SQLPerformanceTrace Tag: %d", tag);
//        [sqls enumerateKeysAndObjectsUsingBlock:^(NSString *sql, NSNumber *count, BOOL *) {
//            NSLog(@"SQLPerformanceTrace SQL : %@ Count: %d", sql, count.intValue);
//        }];
//        NSLog(@"SQLPerformanceTrace Total cost %ld nanoseconds", (long) cost);
//    }];
//#endif
}

- (NSString *)getDBName:(NSString *)name
{
    NSString *dbName = nil;
    if (!name || name.length == 0) {
        dbName = @"default/default.sqlite";
    }
    else{
        dbName = [NSString stringWithFormat:@"%@/%@.sqlite",name,name];
    }
    return dbName;
}

- (NSString *)getPathWithName:(NSString *)name
{
    return [NSString stringWithFormat:@"%@/%@",self.dbRootPath,name];
}

- (NSArray *)configTables
{
    return nil;
}

- (void)configTable
{
    NSLog(@"configTables -> %@", _dbPath);

#if ENABLE_AUTO_REGISTER_TABLE_CLASS
    NSArray<Class<WCTTableCoding>> *tables = [[self class] allTableClass];
    [self createTables:tables];
#else
    SEL sel = NSSelectorFromString(@"configTables");
    if ([self respondsToSelector:sel]) {
        NSArray<Class<WCTTableCoding>> *tables = [self performSelector:sel];
        [self createTables:tables];
    }
    [self createTable:NSClassFromString(@"WCDBKVStorageItem")];
#endif

}

- (void)createTables:(NSArray *)tables
{
    if (tables && [tables count] > 0) {
        for (Class cls in tables) {
            if ([cls isKindOfClass:[NSString class]]) {
                Class cls1 = NSClassFromString(cls);
                if (cls1) {
                    [self createTable:cls1];
                } else {
                    NSLog(@"create table :%@ -> fail, not found",cls);
                }
            } else {
                [self createTable:cls];
            }
        }
    }
}

- (void)createTable:(Class<WCDBTableCoding>)cls
{
    NSString *tableName = [cls tableName];
    /*
     CREATE TABLE messsage
     (localID INTEGER PRIMARY KEY,
     content TEXT,
     createTime BLOB,
     modifiedTime BLOB)
     */
    BOOL result = [_wcdb createTableAndIndexesOfName:tableName withClass:cls];
    
    NSLog(@"create table : %@[%@] -> %@",cls,tableName,result?@"ok":@"fail");
}

- (void)repair
{
    if (repairing) {
        return;
    }

    repairing = YES;

    NSString *recoverPath = [self.dbPath stringByAppendingString:@"_recover"];
    WCTDatabase *recover = [[WCTDatabase alloc] initWithPath:recoverPath];
    [recover close:^{
        NSError *error;
        BOOL ret = [recover removeFilesWithError:&error];//清理重复的
        if (ret) {
            
        } else {
            
        }
    }];
    __weak __typeof__(self) weakSelf = self;
    [self.wcdb close:^{
        __typeof__(self) self = weakSelf;
        BOOL ret = [recover recoverFromPath:self.dbPath withPageSize:4096 backupCipher:nil databaseCipher:nil];
        NSLog(@"数据库错误修复结束：%d" ,ret);
//        NSError *error;
        //清理旧的损坏文件
//        ret = [self.wcdb removeFilesWithError:&error];
//        NSLog(@"数据库错误文件移除：%d" ,ret);
//        //去掉 _recover 后缀
//        ret = [[NSFileManager defaultManager] moveItemAtPath:recoverPath toPath:self.dbPath error:&error];
//        NSLog(@"数据库错误文件替换：%d , error:%@" ,ret, error);
//        if (ret) {
//        
//        } else {
//            
//        }
        
        self -> _wcdb = recover;
        self -> repairing = NO;
    }];
    
}

#pragma mark -

+ (void)setDBName:(NSString *)name
{
    [[WCDBService sharedInstance] setDBName:name];
}

+ (void)runWithBlock:(void(^)(WCTDatabase *wcdb))block
{
    if (block) {
        block([WCDBService sharedInstance].wcdb);
    }
}

+ (BOOL)runWithTransactionBlock:(BOOL(^)(WCTDatabase *wcdb))block
{
    if(!block) return NO;
    
    return [[WCDBService sharedInstance].wcdb runTransaction:^BOOL{
        return block([WCDBService sharedInstance].wcdb); //YES to commit transaction and NO to rollback transaction
    }];
}

#pragma mark -

+ (BOOL)registerTableClass:(Class)cls {
    if (cls) {
        if (![self.allTableClass containsObject:cls]) {
            [self.allTableClass addObject:cls];
            NSLog(@"registerTableClass : %@", cls);
            return YES;
        } else {
            NSLog(@"registerTableClass : %@, has contains", cls);
            return NO;
        }
    } else {
        NSLog(@"registerTableClass : is nil ... ");
        return NO;
    }
}

+ (NSMutableArray *)allTableClass
{
    if (!__allTableClass) {
        __allTableClass = [NSMutableArray array];
        loadWCDBTableClass();
    }
    return __allTableClass;
}

@end
