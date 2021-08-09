//
//  WCTTableBase.m
//  Student
//
//  Created by andyccc on 2017/8/30.
//  Copyright © 2017年 andyccc. All rights reserved.
//

#import "WCDBTableBase+WCDBService.h"

@interface WCDBTableBase () {
    int _wcdbid;
}
//主键id
@property int wcdbid;

@end


@implementation WCDBTableBase

WCDB_IMPLEMENTATION(WCDBTableBase)
WCDB_SYNTHESIZE(WCDBTableBase, wcdbid)
WCDB_INDEX(WCDBTableBase, "_index", wcdbid)
WCDB_PRIMARY_AUTO_INCREMENT(WCDBTableBase, wcdbid)

@dynamic wcdbid;

- (NSString *)tableName
{
    return [self.class tableName];
}

+ (NSString *)tableName
{
    return NSStringFromClass(self);
}

- (void)setWcdbid:(int)wcdbid
{
    _wcdbid = wcdbid;
}

- (int)wcdbid
{
    return _wcdbid;
}

//+ (void)load
//{
//    [self registerTableClass:self];
//}

#pragma mark -

+ (BOOL)registerTableClass:(Class)cls
{
    return [WCDBService registerTableClass:self];
}

@end
