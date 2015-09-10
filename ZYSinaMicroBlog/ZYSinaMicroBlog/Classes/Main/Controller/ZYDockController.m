//
//  ZYDockController.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYDockController.h"

@interface ZYDockController ()<ZYDockDelegate>

@end

@implementation ZYDockController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addDock];
}

#pragma mark 添加Dock控件到当前控制器
-(void)addDock{
    self.dock = [[ZYDock alloc]init];
    //设置Dock的代理为当前的控制器
    self.dock.delegate = self;
    
    // 将Dock添加到当前控制器的View上面，即调整Dock尺寸位置让其显示到屏幕最底部
    self.dock.frame = CGRectMake(0, self.view.frame.size.height - kDockHeight, self.view.frame.size.width, kDockHeight);
    [self.view addSubview:self.dock];
    
}

#pragma mark 首页控制器上View的切换
// Dock的代理方法，当Dock上按钮被点击时，切换相应的View到当前控制器上显示
- (void)dock:(ZYDock *)dock itemSelectFrom:(NSInteger)sourceIndex to:(NSInteger)toIndex{
    
    if (toIndex < 0 || toIndex >= self.childViewControllers.count) return;
    
    // 1、移除之前的View
    UIViewController *oldController = self.childViewControllers[sourceIndex];
    [oldController.view removeFromSuperview];
    
    // 2、展示当前的View并设置尺寸位置
    UIViewController *newViewControl = self.childViewControllers[toIndex];
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height - dock.frame.size.height;
    newViewControl.view.frame = CGRectMake(0, 0, width, height);
    [self.view addSubview:newViewControl.view];
}


@end
