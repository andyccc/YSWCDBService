//
//  WCTInterface+Extension.m
//  Student
//
//  Created by liu on 2017/9/25.
//  Copyright © 2017年 andyccc. All rights reserved.
//

#import "WCTInterface+Extension.h"
#import <WCDB/WCTCoding.h>
#import <WCDB/WCTDeclare.h>
#import <WCDB/WCTDelete+Private.h>
#import <WCDB/WCTDelete.h>
#import <WCDB/WCTExpr.h>
#import <WCDB/WCTInsert+Private.h>
#import <WCDB/WCTInsert.h>
#import <WCDB/WCTInterface+Convenient.h>
#import <WCDB/WCTProperty.h>
#import <WCDB/WCTResult.h>
#import <WCDB/WCTRowSelect+Private.h>
#import <WCDB/WCTRowSelect.h>
#import <WCDB/WCTSelect+Private.h>
#import <WCDB/WCTSelect.h>
#import <WCDB/WCTUpdate+Private.h>
#import <WCDB/WCTUpdate.h>

@implementation WCTInterface (Extension)
- (NSArray /* <WCTObject*> */ *)getObjectsOfClass:(Class)cls
                                        fromTable:(NSString *)tableName
                                            where:(const WCTCondition &)condition
                                          groupBy:(const WCTGroupByList &)groupList
                                          orderBy:(const WCTOrderByList &)orderList
{
    return [self getObjectsOfClass:cls andResults:[cls AllProperties] fromTable:tableName where:condition groupBy:groupList orderBy:orderList];
}

- (NSArray /* <WCTObject*> */ *)getObjectsOfClass:(Class)cls
                                       andResults:(const WCTResultList &)resultList
                                        fromTable:(NSString *)tableName
                                            where:(const WCTCondition &)condition
                                          groupBy:(const WCTGroupByList &)groupList
                                          orderBy:(const WCTOrderByList &)orderList
{
    return [[[[[[WCTSelect alloc] initWithCore:_core andResults:resultList fromTable:tableName] where:condition] groupBy:groupList] orderBy:orderList] allObjects];
}

@end
