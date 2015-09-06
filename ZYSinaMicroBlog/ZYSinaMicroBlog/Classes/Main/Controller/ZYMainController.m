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
#import "ZYNavigationController.h"
#import "ZYProfileController.h"

@implementation ZYMainController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self addSubView];
    
    [self addDockItems];
}
#pragma mark 添加Dock控件到首页控制器
- (void)addDockItems{
    [self.dock addItemWithIcon:@"tabbar_home.png" selectedIcon:@"tabbar_home_selected.png" title:@"首页"];
}

-(void)addSubView{
    // 添加"首页"视图
    ZYHomeViewController *homeControl = [[ZYHomeViewController alloc] init];
    homeControl.view.backgroundColor = [UIColor grayColor];
    ZYNavigationController *homeNav = [[ZYNavigationController alloc] initWithRootViewController:homeControl];
    [self addChildViewController:homeNav];
    
    // 添加"消息"视图
    ZYMessageViewController *messageControl = [[ZYMessageViewController alloc] init];
    messageControl.view.backgroundColor = [UIColor greenColor];
    ZYNavigationController *messageNav = [[ZYNavigationController alloc] initWithRootViewController:messageControl];
    [self addChildViewController:messageNav];
    
    // 添加"我"视图
    ZYProfileController *profileControl = [[ZYProfileController alloc] init];
    profileControl.view.backgroundColor = [UIColor yellowColor];
    ZYNavigationController *profileNav = [[ZYNavigationController alloc] initWithRootViewController:profileControl];
    [self addChildViewController:profileNav];
    
    // 添加"广场"视图
    ZYDiscoverViewController *discoverControl = [[ZYDiscoverViewController alloc] init];
    discoverControl.view.backgroundColor = [UIColor blueColor];
    ZYNavigationController *discoverNav = [[ZYNavigationController alloc] initWithRootViewController:discoverControl];
    [self addChildViewController:discoverNav];
    
    // 添加"更多"视图
    ZYMoreViewController *moreControl = [[ZYMoreViewController alloc] init];
    ZYNavigationController *moreNav = [[ZYNavigationController alloc] initWithRootViewController:moreControl];
    [self addChildViewController:moreNav];
}

@end
