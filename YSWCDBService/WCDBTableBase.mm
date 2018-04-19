//
//  WCTTableBase.m
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBTableBase+WCDBService.h"

@implementation WCDBTableBase

WCDB_IMPLEMENTATION(WCDBTableBase)
WCDB_SYNTHESIZE(WCDBTableBase, wcdbid)
WCDB_INDEX(WCDBTableBase, "_index", wcdbid)
WCDB_PRIMARY_AUTO_INCREMENT(WCDBTableBase, wcdbid)

- (instancetype)init
{
    if (self = [super init]) {
        
        
    }
    return self;
}

- (NSString *)tableName
{
    return [self.class tableName];
}

+ (NSString *)tableName
{
    return NSStringFromClass(self);
}

@end
