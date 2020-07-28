//
//  ViewController.m
//  Demo
//
//  Created by yans on 2019/10/11.
//  Copyright © 2019 hzty. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
#import "WCDBService.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [WCDBService setDBName:@"123"];
    [WCDBService setDBName:@"123"];
    [WCDBService setDBName:@"123"];
    [WCDBService setDBName:@"123"];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self.navigationController pushViewController:BViewController.new animated:YES];
//    });

    [self testinit1];
    [self testinit1];
    [self testinit1];
}

- (void)testinit1
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"testinit1");
    });
}


@end
