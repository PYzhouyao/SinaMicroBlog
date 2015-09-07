//
//  UIBarButtonItem+ZY.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/7.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import "UIBarButtonItem+ZY.h"

@implementation UIBarButtonItem (ZY)

- (id)initWithImageName:(NSString *)imageName highLightedImageName:(NSString *)highLight addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    //创建一个普通按钮并设置按钮样式
    UIButton *button = [[UIButton alloc]init];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button];
    return item;
}

+ (id)barButtonItemWithImageName:(NSString *)imageName highLightedImageName:(NSString *)highLight addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    return [[self alloc] initWithImageName:imageName highLightedImageName:highLight addTarget:target action:action forControlEvents:controlEvents];
}

@end
