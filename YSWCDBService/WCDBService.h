//
//  WCDBService.h
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCDBService : NSObject

- (instancetype)sharedInstance;
+ (instancetype)sharedInstance;

@property (nonatomic, strong, readonly) NSString *dbRootPath;
@property (nonatomic, strong, readonly) NSString *dbPath;
@property (nonatomic, strong, readonly) NSString *dbName;

+ (BOOL)registerTableClass:(Class)cls;

+ (void)setDBName:(NSString *)name;

@end
