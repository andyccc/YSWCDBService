//
//  WCDBKVStorage.m
//  Student
//
//  Created by andyccc on 2017/12/25.
//  Copyright © 2017年 andyccc. All rights reserved.
//

#import "WCDBKVStorage.h"
#import "WCDBKVStorageItem+WCTTableCoding.h"
#import "WCDBTableBase+WCDBService.h"

@interface WCDBKVStorage(){
    
    
}

@property (nonatomic, strong, readonly) WCTDatabase *wcdb;

@end

@implementation WCDBKVStorage

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
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *docDir = [paths objectAtIndex:0];
        NSString *path = [docDir stringByAppendingPathComponent:@"WCDBKVStorage"];
        
        _wcdb = [[WCTDatabase alloc] initWithPath:path];
        
        //set config
        [_wcdb setConfig:^BOOL(std::shared_ptr<WCDB::Handle> handle, WCDB::Error &error) {
            return handle->exec(WCDB::StatementPragma().pragma(WCDB::Pragma::SecureDelete, YES));
        } forName:@"WCDBKVStorage/default.sqlite" withOrder:1];

        [_wcdb createTableAndIndexesOfName:self.tableName withClass:self.tableClass];
    }
    return self;
}

- (WCTDatabase *)WCDB
{
    return self.class.WCDB;
}

+ (WCTDatabase *)WCDB
{
    return WCDBKVStorage.sharedInstance.wcdb;
}

- (Class)tableClass
{
    return self.class.tableClass;
}

- (NSString *)tableName
{
    return self.class.tableName;
}

+ (Class)tableClass
{
    return WCDBKVStorageItem.class;
}

+ (NSString *)tableName
{
    return NSStringFromClass(self.tableClass);
}

+ (BOOL)setObject:(id<NSCoding>)object forKey:(NSString *)key
{
    return [self setObject:object forKey:key extendedData:nil];
}

+ (BOOL)setObject:(id<NSCoding>)object forKey:(NSString *)key extendedData:(id)extendedData
{
    NSString *_key = [self getKey:key];
    NSData *_value = [NSKeyedArchiver archivedDataWithRootObject:object];
    id _extendedData = nil;
    if (extendedData) {
        _extendedData = [NSKeyedArchiver archivedDataWithRootObject:extendedData];
    }
    WCDBKVStorageItem *item = [WCDBKVStorageItem new];
    item.filename = key;
    item.key = _key;
    item.value = _value;
    item.extendedData = extendedData;
    
    return [self.WCDB runTransaction:^BOOL{
        [self.WCDB deleteObjectsFromTable:self.tableName where:WCDBKVStorageItem.key == _key];
        [self.WCDB insertObject:item into:self.tableName];
        return YES;
    }];

//   return [WCDBKVStorageItem runWithTransactionBlock:^BOOL(WCTDatabase *wcdb) {
//        [WCDBKVStorageItem deleteObjectsWhere:WCDBKVStorageItem.key == _key];
//        BOOL ret = [WCDBKVStorageItem insertObject:item];
//
//        return YES;
//    }];
}

+ (NSString *)getKey:(NSString *)key
{
    return key;
//    NSString *_key = [[key MD5] lowercaseString];
//    return _key;
}

+ (id)getValueWithKey:(NSString *)key
{
    return [self getObjectForKey:key];
}

+ (id)getObjectForKey:(NSString *)key
{
    NSString *_key = [self getKey:key];

    WCDBKVStorageItem *item = [WCDBKVStorageItem getOneObjectWhere:WCDBKVStorageItem.key == _key];
    id value = nil;
    if (item) {
        value = [NSKeyedUnarchiver unarchiveObjectWithData:item.value];
    }
    return value;
}

+ (WCDBKVStorageItem *)getItemForKey:(NSString *)key
{
    NSString *_key = [self getKey:key];
    return [self.WCDB getOneObjectOfClass:self.tableClass fromTable:self.tableName where:WCDBKVStorageItem.key == _key];
//    return [WCDBKVStorageItem getOneObjectWhere:WCDBKVStorageItem.key == _key];
}

+ (void)removeValueWithKey:(NSString *)key
{
    NSString *_key = [self getKey:key];

    [self.WCDB deleteObjectsFromTable:self.tableName where:WCDBKVStorageItem.key == _key];

//    [WCDBKVStorageItem deleteObjectsWhere:_key];
}


+ (BOOL)saveValueWithKey:(NSString *)key value:(id)value
{
    return [self setObject:value forKey:key];
}

+ (BOOL)removeValueWithKeys:(NSArray *)keys
{
    NSMutableArray *_keys = [NSMutableArray array];
    for (NSString *key in keys) {
        NSString *_key = [self getKey:key];

        [_keys addObject:_key];
    }
    return [self.WCDB deleteObjectsFromTable:self.tableName where:WCDBKVStorageItem.key.in(_keys)];
//    return [WCDBKVStorageItem deleteObjectsWhere:WCDBKVStorageItem.key.in(_keys)];
}

+ (BOOL)saveWithDictionary:(NSDictionary *)dic
{
    NSArray *keys = [dic allKeys];
    NSMutableArray *_keys = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    for (NSString *key in keys) {
        id value = dic[key];
        
        NSString *_key = [self getKey:key];
        [_keys addObject:_key];
        
        NSData *_value = [NSKeyedArchiver archivedDataWithRootObject:value];
        id _extendedData = nil;
        WCDBKVStorageItem *item = [WCDBKVStorageItem new];
        item.filename = key;
        item.key = _key;
        item.value = _value;
        [items addObject:item];
    }
    
    return [self.WCDB runTransaction:^BOOL{
        [self.WCDB deleteObjectsFromTable:self.tableName where:WCDBKVStorageItem.key.in(keys)];
        BOOL ret = [self.WCDB insertObjects:items into:self.tableName];
        return ret;
    }];

//    return [WCDBKVStorageItem runWithTransactionBlock:^BOOL(WCTDatabase *wcdb) {
//        [WCDBKVStorageItem deleteObjectsWhere:WCDBKVStorageItem.key.in(keys)];
//        BOOL ret = [WCDBKVStorageItem insertObjects:items];
//
//        return ret;
//    }];
}

+ (void)getValuesWithKeys:(NSArray *)keys unarchiveObject:(void(^)(NSString * key,id value))block
{
    NSArray *items = [self.WCDB getObjectsOfClass:self.tableClass fromTable:self.tableName where:WCDBKVStorageItem.key.in(keys)];
//    NSArray *items = [WCDBKVStorageItem getObjectsWhere:WCDBKVStorageItem.key.in(keys)];
    for (WCDBKVStorageItem *item in items) {
        if (item.value) {
            id value = [NSKeyedUnarchiver unarchiveObjectWithData:item.value];
            if (block) {
                block(item.key,value);
            }
        }
    }
}

@end
