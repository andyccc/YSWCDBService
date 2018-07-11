//
//  WCTTableBase.h
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ENABLE_AUTO_REGISTER_TABLE_CLASS 1
#if ENABLE_AUTO_REGISTER_TABLE_CLASS
#define AUTO_REGISTER_TABLE_CLASS() \
+ (void)load\
{\
[self registerTableClass:self];\
}
#else
#define AUTO_REGISTER_TABLE_CLASS()
#endif

@interface WCDBTableBase : NSObject

- (NSString *)tableName;
+ (NSString *)tableName;

- (int)wcdbid;
- (void)setWcdbid:(int)wcdbid;

+ (BOOL)registerTableClass:(Class)cls;

@end
