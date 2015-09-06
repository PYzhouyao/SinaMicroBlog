//
//  ZYHomeViewController.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYHomeViewController.h"
#import ""
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
    
    //
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImageName:@"navigationbar_compose.png" highLightedImageName:@"navigationbar_compose_highlighted.png" addTarget:self action:@selector(leftButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
