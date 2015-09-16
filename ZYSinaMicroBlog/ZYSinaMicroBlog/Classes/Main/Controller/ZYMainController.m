//
//  ZYMainController.m
//  ZYSinaMicroBlog
//
//  Created by Yao.zhou on 15/8/7.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYMainController.h"
#import "ZYDiscoverViewController.h"
#import "ZYMoreViewController.h"
#import "ZYMessageViewController.h"
#import "ZYHomeViewController.h"
#import "ZYProfileController.h"

@interface ZYMainController () <ZYDockDelegate>

@end

@implementation ZYMainController 

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self addSubView];
    
    [self addDockItems];
}


-(void)addSubView{
    // 添加"首页"视图
    ZYHomeViewController *homeControl = [[ZYHomeViewController alloc] init];
    homeControl.view.backgroundColor = [UIColor grayColor];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeControl];
    [self addChildViewController:homeNav];
    
    // 添加"消息"视图
    ZYMessageViewController *messageControl = [[ZYMessageViewController alloc] init];
    messageControl.view.backgroundColor = [UIColor greenColor];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageControl];
    [self addChildViewController:messageNav];
    
    // 添加"我"视图
    ZYProfileController *profileControl = [[ZYProfileController alloc] init];
    profileControl.view.backgroundColor = [UIColor yellowColor];
    UINavigationController *profileNav = [[UINavigationController alloc] initWithRootViewController:profileControl];
    [self addChildViewController:profileNav];
    
    // 添加"广场"视图
    ZYDiscoverViewController *discoverControl = [[ZYDiscoverViewController alloc] init];
    discoverControl.view.backgroundColor = [UIColor blueColor];
    UINavigationController *discoverNav = [[UINavigationController alloc] initWithRootViewController:discoverControl];
    [self addChildViewController:discoverNav];
    
    // 添加"更多"视图
    ZYMoreViewController *moreControl = [[ZYMoreViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *moreNav = [[UINavigationController alloc] initWithRootViewController:moreControl];
    [self addChildViewController:moreNav];
}


#pragma mark 添加Dock控件到首页控制器
- (void)addDockItems{
    [self.dock addItemWithIcon:@"tabbar_home.png" selectedIcon:@"tabbar_home_selected.png" title:@"首页"];
    [self.dock addItemWithIcon:@"tabbar_message_center.png" selectedIcon:@"tabbar_message_center_selected.png" title:@"消息"];
    [self.dock addItemWithIcon:@"tabbar_profile.png" selectedIcon:@"tabbar_profile_selected.png" title:@"我"];
    [self.dock addItemWithIcon:@"tabbar_discover.png" selectedIcon:@"tabbar_discover_selected.png" title:@"广场"];
    [self.dock addItemWithIcon:@"tabbar_more.png" selectedIcon:@"tabbar_more_selected.png" title:@"更多"];
    
}

@end
