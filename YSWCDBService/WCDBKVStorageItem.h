//
//  WCDBKVStorage.h
//  Student
//
//  Created by yans on 2017/12/25.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBTableBase.h"

@interface WCDBKVStorageItem : WCDBTableBase

@property (nonatomic, strong) NSString *key;                ///< key
@property (nonatomic, strong) NSData *value;                ///< value
@property (nonatomic, strong) NSString *filename; ///< filename (nil if inline)
@property (nonatomic) int size;                             ///< value's size in bytes
@property (nonatomic) int modTime;                          ///< modification unix timestamp
@property (nonatomic) int accessTime;                       ///< last access unix timestamp
@property (nonatomic, strong) NSData *extendedData; ///< extended data (nil if no extended data)


@end
