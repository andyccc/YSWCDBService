//
//  WCDBService_WCTDatabase.h
//  Student
//
//  Created by yans on 2017/9/5.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBService.h"
#import <WCDB/WCDB.h>

@interface WCDBService ()

@property (nonatomic, strong, readonly) WCTDatabase *wcdb;

+ (void)runWithBlock:(void(^)(WCTDatabase *wcdb))block;

+ (BOOL)runWithTransactionBlock:(BOOL(^)(WCTDatabase *wcdb))block;

@end
