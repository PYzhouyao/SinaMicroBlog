//
//  UIBarButtonItem+ZY.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/7.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers" //不让编译器指定初始化器

#import "UIBarButtonItem+ZY.h"

@implementation UIBarButtonItem (ZY)

- (id)initWithImageName:(NSString *)imageName highLightedImageName:(NSString *)highLight addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    
    //创建一个普通按钮并设置按钮样式
    UIButton *button = [[UIButton alloc]init];
    UIImage *imge = [UIImage imageNamed:imageName];
    [button setImage:imge forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highLight] forState:UIControlStateHighlighted];
   
    CGSize buttonSize = imge.size;
    button.frame = (CGRect){CGPointZero,buttonSize};
    
    //设置按钮事件处理
    [button addTarget:target action:action forControlEvents:controlEvents];
    
    //将ITEM初始化为上述按钮样式
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button];
    return item;

}

+ (id)barButtonItemWithImageName:(NSString *)imageName highLightedImageName:(NSString *)highLight addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    return [[self alloc] initWithImageName:imageName highLightedImageName:highLight addTarget:target action:action forControlEvents:controlEvents];
}

@end
