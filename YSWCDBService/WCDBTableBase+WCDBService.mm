//
//  WCDBTableBase+WCDBService.m
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBTableBase+WCDBService.h"
#import "WCTInterface+Extension.h"
#import <WCDB/WCDB.h>

@implementation WCDBTableBase (WCDBService)

#pragma mark -

- (WCTDatabase *)wcdb
{
    return self.class.wcdb;
}

+ (WCTDatabase *)wcdb
{
    return [WCDBService sharedInstance].wcdb;
}

#pragma mark -

+ (NSString *)dbPath
{
    return [WCDBService sharedInstance].dbPath;
}

+ (NSString *)dbRootPath
{
    return [WCDBService sharedInstance].dbRootPath;
}

+ (void)runWithBlock:(void(^)(WCTDatabase *wcdb))block
{
    [WCDBService runWithBlock:block];
}

+ (BOOL)runWithTransactionBlock:(BOOL(^)(WCTDatabase *wcdb))block
{
    return [WCDBService runWithTransactionBlock:block];
}

- (NSArray *)query
{
    return nil;
}

- (BOOL)deleteObject
{
    return [self.class deleteObjectsWhere:self.class.wcdbid == self.wcdbid];
}

#pragma mark - Get Object
+ (id /* WCTObject* */)getOneObject
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName];
}

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName where:condition];
}

+ (id /* WCTObject* */)getOneObjectOrderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName orderBy:orderList];
}

+ (id /* WCTObject* */)getOneObjectOffset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName offset:offset];
}

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
                                 orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName where:condition orderBy:orderList];
}

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
                                  offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName where:condition offset:offset];
}

+ (id /* WCTObject* */)getOneObjectOrderBy:(const WCTOrderByList &)orderList
                                    offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
                                 orderBy:(const WCTOrderByList &)orderList
                                  offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOfClass:self.class fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

#pragma mark - Get Part Of Object
+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName where:condition];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName orderBy:orderList];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                      offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName offset:offset];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
                                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
                                      offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName where:condition offset:offset];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                     orderBy:(const WCTOrderByList &)orderList
                                      offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
                                     orderBy:(const WCTOrderByList &)orderList
                                      offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneObjectOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

#pragma mark - Get One Row
+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName where:condition];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                          orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName orderBy:orderList];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName offset:offset];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
                          orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName where:condition offset:offset];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                          orderBy:(const WCTOrderByList &)orderList
                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
                          orderBy:(const WCTOrderByList &)orderList
                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneRowOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

#pragma mark - Get One Column
+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName orderBy:orderList];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName limit:limit];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                                 limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition limit:limit];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName orderBy:orderList limit:limit];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName limit:limit offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList limit:limit];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition limit:limit offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName orderBy:orderList limit:limit offset:offset];
}

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Get One Distinct Column
+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName orderBy:orderList];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName limit:limit];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                         limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition limit:limit];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName orderBy:orderList limit:limit];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName limit:limit offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList limit:limit];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition limit:limit offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName orderBy:orderList limit:limit offset:offset];
}

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctColumnOnResult:result fromTable:self.tableName where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Get One Value
+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName where:condition];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                  orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName orderBy:orderList];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                   offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName offset:offset];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
                                  orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName where:condition orderBy:orderList];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
                                   offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName where:condition offset:offset];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                  orderBy:(const WCTOrderByList &)orderList
                                   offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
                                  orderBy:(const WCTOrderByList &)orderList
                                   offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneValueOnResult:result fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

#pragma mark - Get One Distinct Value
+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName where:condition];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                          orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName orderBy:orderList];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName offset:offset];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
                                          orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName where:condition orderBy:orderList];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
                                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName where:condition offset:offset];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                          orderBy:(const WCTOrderByList &)orderList
                                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
                                          orderBy:(const WCTOrderByList &)orderList
                                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getOneDistinctValueOnResult:result fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

#pragma mark - Get Objects
+ (NSArray /* <WCTObject*> */ *)getAllObjects
{
    return [self.wcdb getAllObjectsOfClass:self.class fromTable:self.tableName];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName orderBy:orderList];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsLimit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOffset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition orderBy:orderList];
}

#pragma mark - group by
+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        groupBy:(const WCTGroupByList &)groupList
                                        orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition groupBy:groupList orderBy:orderList];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                     andResults:(const WCTResultList &)resultList
                                        groupBy:(const WCTGroupByList &)groupList
                                        orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getObjectsOfClass:self.class andResults:resultList fromTable:self.tableName where:condition groupBy:groupList orderBy:orderList];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                          limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                         offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
                                            limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName orderBy:orderList limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
                                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsLimit:(const WCTLimit &)limit
                                         offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName limit:limit offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
                                          limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition orderBy:orderList limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
                                         offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                          limit:(const WCTLimit &)limit
                                         offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition limit:limit offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
                                            limit:(const WCTLimit &)limit
                                           offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName orderBy:orderList limit:limit offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
                                          limit:(const WCTLimit &)limit
                                         offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOfClass:self.class fromTable:self.tableName where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Get Part Of Objects
+ (NSArray /* <WCTObject*> */ *)getAllObjectsOnResults:(const WCTResultList &)resultList
{
    return [self.wcdb getAllObjectsOnResults:resultList fromTable:self.tableName];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName orderBy:orderList];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                              limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName orderBy:orderList limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName limit:limit offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList limit:limit];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition limit:limit offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName orderBy:orderList limit:limit offset:offset];
}

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset
{
    return [self.wcdb getObjectsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Get Rows
+ (WCTColumnsXRows *)getAllRowsOnResults:(const WCTResultList &)resultList
{
    return [self.wcdb getAllRowsOnResults:resultList fromTable:self.tableName];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName orderBy:orderList];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                limit:(const WCTLimit &)limit
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName limit:limit];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                                limit:(const WCTLimit &)limit
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition limit:limit];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName orderBy:orderList limit:limit];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName orderBy:orderList offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName limit:limit offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList limit:limit];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition limit:limit offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName orderBy:orderList limit:limit offset:offset];
}

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset
{
    return [self.wcdb getRowsOnResults:resultList fromTable:self.tableName where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Insert
+ (BOOL)insertObject:(WCTObject *)object
{
    return [self.wcdb insertObject:object into:self.tableName];
}

+ (BOOL)insertObjects:(NSArray<WCTObject *> *)objects
{
    return [self.wcdb insertObjects:objects into:self.tableName];
}

+ (BOOL)insertOrReplaceObject:(WCTObject *)object
{
    return [self.wcdb insertOrReplaceObject:object into:self.tableName];
}

+ (BOOL)insertOrReplaceObjects:(NSArray<WCTObject *> *)objects
{
    return [self.wcdb insertOrReplaceObjects:objects into:self.tableName];
}

+ (BOOL)insertObject:(WCTObject *)object
        onProperties:(const WCTPropertyList &)propertyList
{
    return [self.wcdb insertObject:object onProperties:propertyList into:self.tableName];
}

+ (BOOL)insertObjects:(NSArray<WCTObject *> *)objects
         onProperties:(const WCTPropertyList &)propertyList
{
    return [self.wcdb insertObjects:objects onProperties:propertyList into:self.tableName];
}

+ (BOOL)insertOrReplaceObject:(WCTObject *)object
                 onProperties:(const WCTPropertyList &)propertyList
{
    return [self.wcdb insertOrReplaceObject:object onProperties:propertyList into:self.tableName];
}

+ (BOOL)insertOrReplaceObjects:(NSArray<WCTObject *> *)objects
                  onProperties:(const WCTPropertyList &)propertyList
{
    return [self.wcdb insertOrReplaceObjects:objects onProperties:propertyList into:self.tableName];
}

#pragma mark - Update Properties With Object
+ (BOOL)updateAllRowsOnProperties:(const WCTPropertyList &)propertyList
                       withObject:(WCTObject *)object
{
    return [self.wcdb updateAllRowsInTable:self.tableName onProperties:propertyList withObject:object];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object orderBy:orderList];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition orderBy:orderList];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object orderBy:orderList limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withObject:object where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Update Property With Object
+ (BOOL)updateAllRowsOnProperty:(const WCTProperty &)property
                     withObject:(WCTObject *)object
{
    return [self.wcdb updateAllRowsInTable:self.tableName onProperty:property withObject:object];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object orderBy:orderList];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition orderBy:orderList];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object orderBy:orderList limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withObject:object where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Update Properties With Row
+ (BOOL)updateAllRowsOnProperties:(const WCTPropertyList &)propertyList
                          withRow:(WCTOneRow *)row
{
    return [self.wcdb updateAllRowsInTable:self.tableName onProperties:propertyList withRow:row];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row limit:condition];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row orderBy:orderList];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition orderBy:orderList];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row orderBy:orderList limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperties:propertyList withRow:row where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Update Property With Value
+ (BOOL)updateAllRowsOnProperty:(const WCTProperty &)property
                      withValue:(WCTValue *)value
{
    return [self.wcdb updateAllRowsInTable:self.tableName onProperty:property withValue:value];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value orderBy:orderList];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition orderBy:orderList];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition orderBy:orderList limit:limit];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition orderBy:orderList offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value orderBy:orderList limit:limit offset:offset];
}

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb updateRowsInTable:self.tableName onProperty:property withValue:value where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Delete
+ (BOOL)deleteAllObjects
{
    return [self.wcdb deleteAllObjectsFromTable:self.tableName];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
{
    return [self.wcdb deleteObjectsFromTable:self.tableName where:condition];
}

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb deleteObjectsFromTable:self.tableName orderBy:orderList];
}

+ (BOOL)deleteObjectsLimit:(const WCTLimit &)limit
{
    return [self.wcdb deleteObjectsFromTable:self.tableName limit:limit];
}

+ (BOOL)deleteObjectsOffset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName offset:offset];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
{
    return [self.wcdb deleteObjectsFromTable:self.tableName orderBy:orderList];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                     limit:(const WCTLimit &)limit
{
    return [self.wcdb deleteObjectsFromTable:self.tableName where:condition limit:limit];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                    offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName where:condition offset:offset];
}

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.wcdb deleteObjectsFromTable:self.tableName orderBy:orderList limit:limit];
}

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName orderBy:orderList offset:offset];
}

+ (BOOL)deleteObjectsLimit:(const WCTLimit &)limit
                    offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName limit:limit offset:offset];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
                     limit:(const WCTLimit &)limit
{
    return [self.wcdb deleteObjectsFromTable:self.tableName where:condition orderBy:orderList limit:limit];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
                    offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName where:condition orderBy:orderList offset:offset];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                     limit:(const WCTLimit &)limit
                    offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName limit:limit offset:offset];
}

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName orderBy:orderList limit:limit offset:offset];
}

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
                     limit:(const WCTLimit &)limit
                    offset:(const WCTOffset &)offset
{
    return [self.wcdb deleteObjectsFromTable:self.tableName where:condition orderBy:orderList limit:limit offset:offset];
}

@end


@implementation WCDBTableBase (WCDBService2)
#pragma mark - Insert
- (BOOL)insert
{
    return [self.class insertObject:self];
}

- (BOOL)insertObjects:(NSArray<WCTObject *> *)objects
{
    return [self.class insertObjects:objects];
}

- (BOOL)insertOrReplace
{
    return [self.class insertOrReplaceObject:self];
}

- (BOOL)insertOrReplaceObjects:(NSArray<WCTObject *> *)objects
{
    return [self.class insertOrReplaceObjects:objects];
}

- (BOOL)insertOnProperties:(const WCTPropertyList &)propertyList
{
    return [self.class insertObject:self onProperties:propertyList];
}

- (BOOL)insertOrReplaceOnProperties:(const WCTPropertyList &)propertyList
{
    return [self.class insertOrReplaceObject:self onProperties:propertyList];
}

#pragma mark - Update Properties With Object
- (BOOL)updateAllRowsOnProperties:(const WCTPropertyList &)propertyList
{
    return [self.class updateAllRowsOnProperties:propertyList withObject:self];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.class updateRowsOnProperties:propertyList withObject:self orderBy:orderList];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperties:propertyList withObject:self limit:limit];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition orderBy:orderList];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition limit:limit];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperties:propertyList withObject:self orderBy:orderList limit:limit];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self orderBy:orderList offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self limit:limit offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition orderBy:orderList limit:limit];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition orderBy:orderList offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition limit:limit offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self orderBy:orderList limit:limit offset:offset];
}

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperties:propertyList withObject:self where:condition orderBy:orderList limit:limit offset:offset];
}

#pragma mark - Update Property With Object
- (BOOL)updateAllRowsOnProperty:(const WCTProperty &)property
{
    return [self.class updateAllRowsOnProperty:property withObject:self];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.class updateRowsOnProperty:property withObject:self orderBy:orderList];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperty:property withObject:self limit:limit];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition orderBy:orderList];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition limit:limit];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperty:property withObject:self orderBy:orderList limit:limit];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self orderBy:orderList offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self limit:limit offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition orderBy:orderList limit:limit];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition orderBy:orderList offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition limit:limit offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self orderBy:orderList limit:limit offset:offset];
}

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset
{
    return [self.class updateRowsOnProperty:property withObject:self where:condition orderBy:orderList limit:limit offset:offset];
}

@end


@implementation NSArray (WCDBService3)

- (BOOL)insertToWCDB:(WCDBTableBase *)tableClass
{
    return [tableClass insertObjects:self];
}

- (BOOL)insertOrReplaceToWCDB:(WCDBTableBase *)tableClass
{
    return [tableClass insertOrReplaceObjects:self];
}

- (BOOL)insertToWCDB:(WCDBTableBase *)tableClass onProperties:(const WCTPropertyList &)propertyList;
{
    return [tableClass insertOnProperties:propertyList];
}

- (BOOL)insertOrReplaceToWCDB:(WCDBTableBase *)tableClass onProperties:(const WCTPropertyList &)propertyList
{
    return [tableClass insertOrReplaceOnProperties:propertyList];
}


@end







