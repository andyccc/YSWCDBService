//
//  WCDBKVStorage.m
//  Student
//
//  Created by yans on 2017/12/25.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBKVStorageItem+WCTTableCoding.h"

@implementation WCDBKVStorageItem

WCDB_IMPLEMENTATION(WCDBKVStorageItem)
WCDB_INDEX(WCDBKVStorageItem, "_index", key)

WCDB_SYNTHESIZE(WCDBKVStorageItem, key)
WCDB_SYNTHESIZE(WCDBKVStorageItem, value)
WCDB_SYNTHESIZE(WCDBKVStorageItem, filename)
WCDB_SYNTHESIZE(WCDBKVStorageItem, size)
WCDB_SYNTHESIZE(WCDBKVStorageItem, modTime)
WCDB_SYNTHESIZE(WCDBKVStorageItem, accessTime)
WCDB_SYNTHESIZE(WCDBKVStorageItem, extendedData)

@end
