//
//  WCTTableCoding.h
//  Childs
//
//  Created by yans on 2017/11/20.
//  Copyright © 2017年 yans. All rights reserved.
//

#import "WCDBKVStorageItem.h"
#import <WCDB/WCDB.h>

@interface WCDBKVStorageItem (WCTTableCoding)<WCTTableCoding>

WCDB_PROPERTY(key)
WCDB_PROPERTY(value)
WCDB_PROPERTY(filename)
WCDB_PROPERTY(size)
WCDB_PROPERTY(modTime)
WCDB_PROPERTY(accessTime)
WCDB_PROPERTY(extendedData)


@end

