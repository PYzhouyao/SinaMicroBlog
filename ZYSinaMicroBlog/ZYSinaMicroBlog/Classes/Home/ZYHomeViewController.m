//
//  ZYHomeViewController.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYHomeViewController.h"
#import "UIBarButtonItem+ZY.h"

@interface ZYHomeViewController ()

@end

@implementation ZYHomeViewController

- (id)initWtihStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        //
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    // 用自定的分类方法给导航条添加左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImageName:@"navigationbar_compose.png" highLightedImageName:@"navigationbar_compose_highlighted.png" addTarget:self action:@selector(leftButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    // 用自定的分类方法给导航条添加右边按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImageName:@"navigationbar_pop.png" highLightedImageName:@"navigationbar_pop_highlighted.png" addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark 首页导航左按钮事件
- (void)leftButtonClick
{
    ZYLog(@"首页左按钮");
}

#pragma mark 首页导航右按钮事件
- (void)rightButtonClick
{
    ZYLog(@"首页右按钮");
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

@end
