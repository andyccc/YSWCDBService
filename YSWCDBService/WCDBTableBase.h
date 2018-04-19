//
//  WCTTableBase.h
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCDBTableBase : NSObject
//主键id
@property (nonatomic, assign) int wcdbid;

- (NSString *)tableName;
+ (NSString *)tableName;

@end
