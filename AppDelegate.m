//
//  AppDelegate.m
//  SevenDay
//
//  Created by macbook for test on 16/11/24.
//  Copyright © 2016年 JackPanda8. All rights reserved.
//

#import "AppDelegate.h"
#import <TencentOpenAPI/TencentOAuth.h>
#import "WXApi.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)configAppLaunch
{
    // 作App配置
    [[NSClassFromString(@"UICalloutBarButton") appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
}

// 用户可重写
- (void)enterLoginUI
{
    UIStoryboard* main = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    LoginAndRegisterViewController *vc = [main instantiateViewControllerWithIdentifier:@"LoginAndRegisterViewController"];
    self.window.rootViewController = vc;
    
//    HomeViewController *vc = [[HomeViewController alloc] init];
//    self.window.rootViewController = vc;
}

- (void) enterMainUI {
    
    UIStoryboard* main = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ContainerMyMessageViewController *vc = [main instantiateViewControllerWithIdentifier:@"ContainerMyMessageViewController"];
    self.window.rootViewController = vc;

    //    self.window.rootViewController = [[MyMessageTableViewController alloc] init];
//    [self.window makeKeyAndVisible];

}

+ (instancetype)sharedAppDelegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}


#pragma - 进入到聊天视图
- (void)pushToChatViewControllerWith:(IMAUser *)user
{
    
}


//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    // Override point for customization after application launch.
//    return YES;
//}
//
//- (void)applicationWillResignActive:(UIApplication *)application {
//    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
//    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
//}
//
//- (void)applicationDidEnterBackground:(UIApplication *)application {
//    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
//    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
//}
//
//- (void)applicationWillEnterForeground:(UIApplication *)application {
//    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
//}
//
//- (void)applicationDidBecomeActive:(UIApplication *)application {
//    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//}
//
//- (void)applicationWillTerminate:(UIApplication *)application {
//    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
//}

@end