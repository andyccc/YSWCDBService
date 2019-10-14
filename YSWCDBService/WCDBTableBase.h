//
//  WCTTableBase.h
//  Student
//
//  Created by yans on 2017/8/30.
//  Copyright © 2017年 yans. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark -

/// 结构体，用于编译期注册
struct WCDBTableClassInfo {
    char *className;
};

#pragma mark -

#define ENABLE_AUTO_REGISTER_TABLE_CLASS 1

#if ENABLE_AUTO_REGISTER_TABLE_CLASS
    #define AUTO_REGISTER_TABLE_CLASS() \
        + (void)load\
        {\
            [self registerTableClass:self];\
        }

    #define AUTO_REGISTER_TABLE_CLASS_LAZY(_class_)\
        __attribute__((used)) static struct WCDBTableClassInfo WCDBTableClass##_class_ \
        __attribute__ ((used, section ("__DATA, __WCDBTCLASS"))) =\
        {\
            .className = (char *)#_class_,\
        };
#else
    #define AUTO_REGISTER_TABLE_CLASS()
    #define AUTO_REGISTER_TABLE_CLASS_LAZY(_class_)
#endif

#pragma mark -

@interface WCDBTableBase : NSObject

- (NSString *)tableName;
+ (NSString *)tableName;

- (int)wcdbid;
- (void)setWcdbid:(int)wcdbid;

+ (BOOL)registerTableClass:(Class)cls;

@end
