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

@implementation ZYMainController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    // 临时Label
//    self.view.backgroundColor = [UIColor whiteColor];
//    UILabel *tempLable = [[UILabel alloc] init];
//    tempLable.center = self.view.center;
//    tempLable.bounds = CGRectMake(0, 0, self.view.frame.size.width * 0.8, 50);
//    tempLable.text = @"微博主界面建设中...";
//    tempLable.textColor = [UIColor blueColor];
//    tempLable.textAlignment = NSTextAlignmentCenter;
//    tempLable.font = [UIFont systemFontOfSize:25];
//    [self.view addSubview:tempLable];

    
    
}

-(void)addDockItem{
    
}

-(void)addSubView{
    // 添加"首页"视图
    ZYHomeViewController *homeControl = [[ZYHomeViewController alloc] init];
    homeControl.view.backgroundColor = [UIColor grayColor];
    //SANavigationController *homeNav = [[SANavigationController alloc] initWithRootViewController:homeControl];
    //[self addChildViewController:homeNav];
    
//    // 添加"消息"视图
//    SAMessageController *messageControl = [[SAMessageController alloc] init];
//    messageControl.view.backgroundColor = [UIColor greenColor];
//    SANavigationController *messageNav = [[SANavigationController alloc] initWithRootViewController:messageControl];
//    [self addChildViewController:messageNav];
//    
//    // 添加"我"视图
//    SAProfileController *profileControl = [[SAProfileController alloc] init];
//    profileControl.view.backgroundColor = [UIColor yellowColor];
//    SANavigationController *profileNav = [[SANavigationController alloc] initWithRootViewController:profileControl];
//    [self addChildViewController:profileNav];
//    
//    // 添加"广场"视图
//    SADiscoverController *discoverControl = [[SADiscoverController alloc] init];
//    discoverControl.view.backgroundColor = [UIColor blueColor];
//    SANavigationController *discoverNav = [[SANavigationController alloc] initWithRootViewController:discoverControl];
//    [self addChildViewController:discoverNav];
//    
//    // 添加"更多"视图
//    SAMoreController *moreControl = [[SAMoreController alloc] init];
//    SANavigationController *moreNav = [[SANavigationController alloc] initWithRootViewController:moreControl];
//    [self addChildViewController:moreNav];
}

@end
