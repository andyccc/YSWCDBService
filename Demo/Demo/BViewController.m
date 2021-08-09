//
//  BViewController.m
//  Demo
//
//  Created by andyccc on 2019/10/11.
//  Copyright © 2019 andyccc. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
    NSArray *arr = @[@"a",@"b"];
    if (arr) {
        NSLog(@" arr -> %@", arr);
    }
    
    NSLog(@" %@", arr[0]);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
