//
//  ZYDockController.h
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYDock.h"


@interface ZYDockController : UIViewController<ZYDockDelegate>

@property (nonatomic,strong)ZYDock *dock;

@end
