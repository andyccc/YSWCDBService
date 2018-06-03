//
//  WCTTableBase.h
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCDBTableBase : NSObject

- (NSString *)tableName;
+ (NSString *)tableName;

- (int)wcdbid;
- (void)setWcdbid:(int)wcdbid;

@end
