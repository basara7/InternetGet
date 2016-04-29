//
//  ViewController.m
//  InternetGet
//
//  Created by Mao Mao on 16/4/27.
//  Copyright © 2016年 Mao Mao. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"

#define imageURL @"http://www.cosplaymore.com/uploadfile/2015/0108/20150108103111712.jpg"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //UIImageView *PicView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //[self.view addSubview:PicView];
    
    /*
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    //must have
    session.responseSerializer = [AFHTTPResponseSerializer serializer];
    session.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"image/jpeg"];
    [session GET:imageURL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"Download is in progress!");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"Download is successful!");
        PicView.image = [UIImage imageWithData:responseObject];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Download is failed %@!", error );
    }];
     */
    //the second method to get the pic
    //[PicView sd_setImageWithURL:[NSURL URLWithString:imageURL]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
