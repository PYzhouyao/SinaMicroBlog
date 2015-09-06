//
//  ZYNavigationController.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYNavigationController.h"

@interface ZYNavigationController ()

@end

@implementation ZYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar *bar = [UINavigationBar appearance];
    
    // 修改导航条背景
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbar_background.png"] forBarMetrics:UIBarMetricsDefault];
    
    // 修改导航条文字样式
    NSShadow * shardow = [[NSShadow alloc]init];
    [shardow setShadowOffset:CGSizeZero];
    [bar setTitleTextAttributes:@{
                                  NSForegroundColorAttributeName:[UIColor grayColor],
                                  NSShadowAttributeName:shardow
                                  } ];
    
    // 修改状态栏样式
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

@end
