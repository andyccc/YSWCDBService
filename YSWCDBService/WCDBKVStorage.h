//
//  WCDBKVStorage.h
//  Student
//
//  Created by andyccc on 2017/12/25.
//  Copyright © 2017年 andyccc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCDBKVStorageItem.h"

@interface WCDBKVStorage : NSObject

- (instancetype)sharedInstance;
+ (instancetype)sharedInstance;

+ (BOOL)setObject:(id<NSCoding>)object forKey:(NSString *)key;
+ (BOOL)saveValueWithKey:(NSString *)key value:(id)value;

+ (id)getObjectForKey:(NSString *)key;
+ (id)getValueWithKey:(NSString *)key;

+ (WCDBKVStorageItem *)getItemForKey:(NSString *)key;
+ (void)removeValueWithKey:(NSString *)key;
+ (BOOL)removeValueWithKeys:(NSArray *)keys;
+ (BOOL)saveWithDictionary:(NSDictionary *)dic;

+ (void)getValuesWithKeys:(NSArray *)keys unarchiveObject:(void(^)(NSString * key,id value))block;

@end
