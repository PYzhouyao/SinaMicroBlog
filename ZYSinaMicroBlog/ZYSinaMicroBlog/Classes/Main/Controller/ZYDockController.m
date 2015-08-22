//
//  ZYDockController.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYDockController.h"
#import "ZYDock.h"


@interface ZYDockController ()<ZYDockDelegate>

@end

@implementation ZYDockController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)addDock{
    self.dock = [[ZYDock alloc]init];
    self.dock.delegate = self;
    
    self.dock.frame = CGRectMake(0, self.view.frame.size.height - kDockHeight, self.view.frame.size.width, kDockHeight);
    
    [self.view addSubview:self.dock];
    
}

-(void)dock:(ZYDock *)dock itemSelectFrol:(NSInteger)sourceIndex to:(NSInteger)toIndex;{
    
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
