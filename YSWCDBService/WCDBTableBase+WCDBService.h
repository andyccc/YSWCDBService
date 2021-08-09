//
//  WCDBTableBase+WCDBService.h
//  Student
//
//  Created by andyccc on 2017/8/30.
//  Copyright © 2017年 andyccc. All rights reserved.
//

#import "WCDBTableBase.h"
#import "WCDBTableCoding.h"

@interface WCDBTableBase (WCDBService)<WCDBTableCoding>

WCDB_PROPERTY(wcdbid)//删除用

- (WCTDatabase *)wcdb;

+ (WCTDatabase *)wcdb;

+ (BOOL)registerTableClass:(Class)cls;

+ (NSString *)dbPath;

+ (NSString *)dbRootPath;

+ (void)runWithBlock:(void(^)(WCTDatabase *wcdb))block;

+ (BOOL)runWithTransactionBlock:(BOOL(^)(WCTDatabase *wcdb))block;

- (NSArray *)query;

- (BOOL)deleteObject;

#pragma mark - Get Object
+ (id /* WCTObject* */)getOneObject;

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition;

+ (id /* WCTObject* */)getOneObjectOrderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTObject* */)getOneObjectOffset:(const WCTOffset &)offset;

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
                                 orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
                                  offset:(const WCTOffset &)offset;

+ (id /* WCTObject* */)getOneObjectOrderBy:(const WCTOrderByList &)orderList
                                    offset:(const WCTOffset &)offset;

+ (id /* WCTObject* */)getOneObjectWhere:(const WCTCondition &)condition
                                 orderBy:(const WCTOrderByList &)orderList
                                  offset:(const WCTOffset &)offset;

#pragma mark - Get Part Of Object
+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                     orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                      offset:(const WCTOffset &)offset;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
                                     orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
                                      offset:(const WCTOffset &)offset;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                     orderBy:(const WCTOrderByList &)orderList
                                      offset:(const WCTOffset &)offset;

+ (id /* WCTObject* */)getOneObjectOnResults:(const WCTResultList &)resultList
                                       where:(const WCTCondition &)condition
                                     orderBy:(const WCTOrderByList &)orderList
                                      offset:(const WCTOffset &)offset;

#pragma mark - Get One Row
+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                          orderBy:(const WCTOrderByList &)orderList;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                           offset:(const WCTOffset &)offset;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
                          orderBy:(const WCTOrderByList &)orderList;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
                           offset:(const WCTOffset &)offset;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                          orderBy:(const WCTOrderByList &)orderList
                           offset:(const WCTOffset &)offset;

+ (WCTOneRow *)getOneRowOnResults:(const WCTResultList &)resultList
                            where:(const WCTCondition &)condition
                          orderBy:(const WCTOrderByList &)orderList
                           offset:(const WCTOffset &)offset;

#pragma mark - Get One Column
+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                                 limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneColumnOnResult:(const WCTResult &)result
                                 where:(const WCTCondition &)condition
                               orderBy:(const WCTOrderByList &)orderList
                                 limit:(const WCTLimit &)limit
                                offset:(const WCTOffset &)offset;

#pragma mark - Get One Distinct Column
+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                         limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset;

+ (WCTOneColumn *)getOneDistinctColumnOnResult:(const WCTResult &)result
                                         where:(const WCTCondition &)condition
                                       orderBy:(const WCTOrderByList &)orderList
                                         limit:(const WCTLimit &)limit
                                        offset:(const WCTOffset &)offset;

#pragma mark - Get One Value
+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                  orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                   offset:(const WCTOffset &)offset;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
                                  orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
                                   offset:(const WCTOffset &)offset;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                  orderBy:(const WCTOrderByList &)orderList
                                   offset:(const WCTOffset &)offset;

+ (id /* WCTValue* */)getOneValueOnResult:(const WCTResult &)result
                                    where:(const WCTCondition &)condition
                                  orderBy:(const WCTOrderByList &)orderList
                                   offset:(const WCTOffset &)offset;

#pragma mark - Get One Distinct Value
+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                          orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                           offset:(const WCTOffset &)offset;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
                                          orderBy:(const WCTOrderByList &)orderList;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
                                           offset:(const WCTOffset &)offset;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                          orderBy:(const WCTOrderByList &)orderList
                                           offset:(const WCTOffset &)offset;

+ (id /* WCTValue* */)getOneDistinctValueOnResult:(const WCTResult &)result
                                            where:(const WCTCondition &)condition
                                          orderBy:(const WCTOrderByList &)orderList
                                           offset:(const WCTOffset &)offset;

#pragma mark - Get Objects
+ (NSArray /* <WCTObject*> */ *)getAllObjects;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition;

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList;

+ (NSArray /* <WCTObject*> */ *)getObjectsLimit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsOffset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList;
#pragma mark - group by
+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        groupBy:(const WCTGroupByList &)groupList
                                        orderBy:(const WCTOrderByList &)orderList;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                     andResults:(const WCTResultList &)resultList
                                        groupBy:(const WCTGroupByList &)groupList
                                        orderBy:(const WCTOrderByList &)orderList;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                          limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                         offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
                                            limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
                                           offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsLimit:(const WCTLimit &)limit
                                         offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
                                          limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
                                         offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                          limit:(const WCTLimit &)limit
                                         offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOrderBy:(const WCTOrderByList &)orderList
                                            limit:(const WCTLimit &)limit
                                           offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsWhere:(const WCTCondition &)condition
                                        orderBy:(const WCTOrderByList &)orderList
                                          limit:(const WCTLimit &)limit
                                         offset:(const WCTOffset &)offset;

#pragma mark - Get Part Of Objects
+ (NSArray /* <WCTObject*> */ *)getAllObjectsOnResults:(const WCTResultList &)resultList;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                              limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset;

+ (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(const WCTResultList &)resultList
                                              where:(const WCTCondition &)condition
                                            orderBy:(const WCTOrderByList &)orderList
                                              limit:(const WCTLimit &)limit
                                             offset:(const WCTOffset &)offset;

#pragma mark - Get Rows
+ (WCTColumnsXRows *)getAllRowsOnResults:(const WCTResultList &)resultList;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                limit:(const WCTLimit &)limit;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                                limit:(const WCTLimit &)limit;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset;

+ (WCTColumnsXRows *)getRowsOnResults:(const WCTResultList &)resultList
                                where:(const WCTCondition &)condition
                              orderBy:(const WCTOrderByList &)orderList
                                limit:(const WCTLimit &)limit
                               offset:(const WCTOffset &)offset;

#pragma mark - Insert
+ (BOOL)insertObject:(WCTObject *)object;

+ (BOOL)insertObjects:(NSArray<WCTObject *> *)objects;

+ (BOOL)insertOrReplaceObject:(WCTObject *)object;

+ (BOOL)insertOrReplaceObjects:(NSArray<WCTObject *> *)objects;

+ (BOOL)insertObject:(WCTObject *)object
        onProperties:(const WCTPropertyList &)propertyList;

+ (BOOL)insertObjects:(NSArray<WCTObject *> *)objects
         onProperties:(const WCTPropertyList &)propertyList;

+ (BOOL)insertOrReplaceObject:(WCTObject *)object
                 onProperties:(const WCTPropertyList &)propertyList;

+ (BOOL)insertOrReplaceObjects:(NSArray<WCTObject *> *)objects
                  onProperties:(const WCTPropertyList &)propertyList;

#pragma mark - Update Properties With Object
+ (BOOL)updateAllRowsOnProperties:(const WCTPropertyList &)propertyList
                       withObject:(WCTObject *)object;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                    withObject:(WCTObject *)object
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

#pragma mark - Update Property With Object
+ (BOOL)updateAllRowsOnProperty:(const WCTProperty &)property
                     withObject:(WCTObject *)object;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                  withObject:(WCTObject *)object
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

#pragma mark - Update Properties With Row
+ (BOOL)updateAllRowsOnProperties:(const WCTPropertyList &)propertyList
                          withRow:(WCTOneRow *)row;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       withRow:(WCTOneRow *)row
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

#pragma mark - Update Property With Value
+ (BOOL)updateAllRowsOnProperty:(const WCTProperty &)property
                      withValue:(WCTValue *)value;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                   withValue:(WCTValue *)value
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

#pragma mark - Delete
+ (BOOL)deleteAllObjects;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition;

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList;

+ (BOOL)deleteObjectsLimit:(const WCTLimit &)limit;

+ (BOOL)deleteObjectsOffset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                     limit:(const WCTLimit &)limit;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                    offset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsLimit:(const WCTLimit &)limit
                    offset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
                     limit:(const WCTLimit &)limit;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
                    offset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                     limit:(const WCTLimit &)limit
                    offset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsOrderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

+ (BOOL)deleteObjectsWhere:(const WCTCondition &)condition
                   orderBy:(const WCTOrderByList &)orderList
                     limit:(const WCTLimit &)limit
                    offset:(const WCTOffset &)offset;


@end


@interface WCDBTableBase (WCDBService2)

#pragma mark - Insert

- (BOOL)insert;

- (BOOL)insertObjects:(NSArray<WCTObject *> *)objects;

- (BOOL)insertOrReplace;

- (BOOL)insertOrReplaceObjects:(NSArray<WCTObject *> *)objects;

- (BOOL)insertOnProperties:(const WCTPropertyList &)propertyList;

- (BOOL)insertOrReplaceOnProperties:(const WCTPropertyList &)propertyList;

#pragma mark - Update Properties With Object2
- (BOOL)updateAllRowsOnProperties:(const WCTPropertyList &)propertyList;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperties:(const WCTPropertyList &)propertyList
                         where:(const WCTCondition &)condition
                       orderBy:(const WCTOrderByList &)orderList
                         limit:(const WCTLimit &)limit
                        offset:(const WCTOffset &)offset;

#pragma mark - Update Property With Object2
- (BOOL)updateAllRowsOnProperty:(const WCTProperty &)property;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

- (BOOL)updateRowsOnProperty:(const WCTProperty &)property
                       where:(const WCTCondition &)condition
                     orderBy:(const WCTOrderByList &)orderList
                       limit:(const WCTLimit &)limit
                      offset:(const WCTOffset &)offset;

@end

@interface NSArray (WCDBService3)

- (BOOL)insertToWCDB:(WCDBTableBase *)tableClass;

- (BOOL)insertOrReplaceToWCDB:(WCDBTableBase *)tableClass;

- (BOOL)insertToWCDB:(WCDBTableBase *)tableClass onProperties:(const WCTPropertyList &)propertyList;

- (BOOL)insertOrReplaceToWCDB:(WCDBTableBase *)tableClass onProperties:(const WCTPropertyList &)propertyList;

@end



