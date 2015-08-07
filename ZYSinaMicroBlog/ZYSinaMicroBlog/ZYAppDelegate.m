//
//  ZYAppDelegate.m
//  ZYSinaMicroBlog
//
//  Created by Yao.zhou on 15/8/7.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYAppDelegate.h"
#import "ZYMainController.h"
#import "ZYNewfeatureController.h"

@implementation ZYAppDelegate
#pragma mark 应用程序加载完毕后调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 创建一个窗口
    _window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    /*****************************************************************/
    
    // 版本号在info.plist中的key值
    
    // 从info.plist中取出当前版本号
    
    
    // 从沙盒中取出上次存储的版本号
   
    
    // 判断是否为第一次使用该版本，如果是则进入新特性展示，否则直接进入微博主界面
    
    
    // 将窗口设置为显示，keyWindow为主窗口，只有主窗口才能与用户交互
    _window.rootViewController = [[ZYMainController alloc]init];
    
    return YES;
}

#pragma mark 程序被挂起时调用
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    // NSLog(@"程序被挂起");
}

#pragma mark 程序进入后台时调用
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    // NSLog(@"程序进入后台");
}

#pragma mark 应用再次进入前台时调用
- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    // NSLog(@"程序进入前台");
}

#pragma mark 处于活动状态时调用
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    // NSLog(@"程序被激活");
}

#pragma mark 程序被终结时调用
- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // NSLog(@"程序被终结时调用");
}

@end
