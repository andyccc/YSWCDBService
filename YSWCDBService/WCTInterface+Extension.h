//
//  WCTInterface+Extension.h
//  Student
//
//  Created by liu on 2017/9/25.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <WCDB/WCDB.h>

@interface WCTInterface (Extension)

- (NSArray /* <WCTObject*> */ *)getObjectsOfClass:(Class)cls
                                        fromTable:(NSString *)tableName
                                            where:(const WCTCondition &)condition
                                          groupBy:(const WCTGroupByList &)groupList
                                          orderBy:(const WCTOrderByList &)orderList;

- (NSArray /* <WCTObject*> */ *)getObjectsOfClass:(Class)cls
                                       andResults:(const WCTResultList &)resultList
                                        fromTable:(NSString *)tableName
                                            where:(const WCTCondition &)condition
                                          groupBy:(const WCTGroupByList &)groupList
                                          orderBy:(const WCTOrderByList &)orderList;

@end

