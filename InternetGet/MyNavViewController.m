//
//  MyNavViewController.m
//  InternetGet
//
//  Created by Mao Mao on 16/4/29.
//  Copyright © 2016年 Mao Mao. All rights reserved.
//

#import "MyNavViewController.h"

@interface MyNavViewController ()

@end

@implementation MyNavViewController

+ (void)initialize
{
    [super initialize];
    if (self == [MyNavViewController class]) {
        UINavigationBar *bar = [UINavigationBar appearance];
        [bar setBackgroundColor:[UIColor redColor]];
        //[bar setBackgroundImage:@"" forBarMetrics:UIBarMetricsDefault];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
