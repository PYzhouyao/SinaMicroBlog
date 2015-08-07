//
//  ZYMainController.m
//  ZYSinaMicroBlog
//
//  Created by Yao.zhou on 15/8/7.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYMainController.h"

@implementation ZYMainController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    // 临时Label
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *tempLable = [[UILabel alloc] init];
    tempLable.center = self.view.center;
    tempLable.bounds = CGRectMake(0, 0, self.view.frame.size.width * 0.8, 50);
    tempLable.text = @"微博主界面建设中...";
    tempLable.textColor = [UIColor blueColor];
    tempLable.textAlignment = NSTextAlignmentCenter;
    tempLable.font = [UIFont systemFontOfSize:25];
    [self.view addSubview:tempLable];

    
}

@end
