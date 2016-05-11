//
//  AppDelegate.m
//  InternetGet
//
//  Created by Mao Mao on 16/4/27.
//  Copyright © 2016年 Mao Mao. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "FirstViewController.h"
#import "MyNavViewController.h"
#import "UIImageView+WebCache.h"

@interface AppDelegate ()

@property (strong, nonatomic) UIView *launchView;

@end

@implementation AppDelegate

@synthesize launchView;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //new a main window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //must have a view controller
    //self.window.rootViewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
    FirstViewController *fVC = [[FirstViewController alloc] init];
    //NavigationContriller
    MyNavViewController *nav = [[MyNavViewController alloc] initWithRootViewController:fVC];
    
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    
    //launch screen
    launchView = [[[NSBundle mainBundle] loadNibNamed:@"LaunchScreen" owner:nil options:nil]firstObject];
    launchView.frame = CGRectMake(0, 0, self.window.screen.bounds.size.width, self.window.screen.bounds.size.height);
    [self.window addSubview:launchView];
    UIImageView *myLaunchImage = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    NSString *LaunchUrl = @"http://img3.duitang.com/uploads/item/201303/13/20130313143913_nkxuc.thumb.700_0_0.jpeg";
    [myLaunchImage sd_setImageWithURL:[NSURL URLWithString:LaunchUrl] placeholderImage:[UIImage imageNamed:@"LaunchPic"]];
    
    [launchView addSubview:myLaunchImage];
    
    [self.window bringSubviewToFront:launchView];
    
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(removeLun) userInfo:nil repeats:NO];
    
    
    
    return YES;
}

-(void)removeLun
{
    [launchView removeFromSuperview];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
