//
//  WCDBService.h
//  Student
//
//  Created by andyccc on 2017/8/30.
//  Copyright © 2017年 andyccc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCDBService : NSObject

- (instancetype)sharedInstance;
+ (instancetype)sharedInstance;

@property (nonatomic, strong, readonly) NSString *dbRootPath;
@property (nonatomic, strong, readonly) NSString *dbPath;
@property (nonatomic, strong, readonly) NSString *dbName;

+ (BOOL)registerTableClass:(id)cls;

+ (void)setDBName:(NSString *)name;

@end
