//
//  WCDBTableCoding.h
//  Student
//
//  Created by yans on 2017/8/31.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCDBService_WCTDatabase.h"

@protocol WCDBTableCoding <WCTTableCoding>

- (NSString *)tableName;
+ (NSString *)tableName;

- (WCTDatabase *)wcdb;

+ (WCTDatabase *)wcdb;

+ (void)runWithBlock:(void(^)(WCTDatabase *wcdb))block;

+ (BOOL)runWithTransactionBlock:(BOOL(^)(WCTDatabase *wcdb))block;

@end
