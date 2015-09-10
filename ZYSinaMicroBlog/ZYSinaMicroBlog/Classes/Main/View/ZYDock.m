//
//  ZYDock.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYDock.h"
#import "ZYDockItem.h"



@implementation ZYDock


-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:kBackgroundImageName]];
    }
    return self;
}

#pragma mark Dock上添加按钮
-(void)addItemWithIcon:(NSString *)iconName selectedIcon:(NSString *)selectedIconName title:(NSString *)title{
    ZYDockItem *item = [[ZYDockItem alloc]init];
    [self addSubview:item];
    
    [item setTitle:title forState:UIControlStateNormal];// 设置按钮文字
    [item setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];// 设置按钮不同状态下的图片
    [item setImage:[UIImage imageNamed:selectedIconName] forState:UIControlStateSelected];
    
    [item addTarget:self action:@selector(itemEvent:) forControlEvents:UIControlEventTouchDown];//按钮响应事件
    
    
    NSUInteger count = self.subviews.count;
    CGFloat width = self.frame.size.width /count;
    CGFloat hight = self.frame.size.height;
    
    //根据按钮个数动态设置按钮尺寸位置
    for (int i = 0; i < count; i++) {
        ZYDockItem *item = self.subviews[i];
        item.tag = i ;
        item.frame = CGRectMake(width*i , 0, width, hight);
    }
    
    if (nil == self.SelectedItem) {
        [self itemEvent:self.subviews[0]]; //默认第一个按钮为点中状态
    }

}

#pragma mark 被选状态切换
// 点击当前按钮，则当前按钮置于被选择状态，其他按钮置于未被选择状态
-(void)itemEvent:(ZYDockItem *)item{
    
    // 0、通知代理
    if ([_delegate respondsToSelector:@selector(dock:itemSelectFrom:to:)]) {
        [_delegate dock:self itemSelectFrom:(NSInteger)self.SelectedItem.tag to:(NSInteger)item.tag];
    }
    
    // 1、取消之前按钮的select状态
    self.SelectedItem.selected = NO;
    // 2、设置当前按钮select状态
    item.selected = YES;
    // 3、重新赋值给成员变量
    self.SelectedItem = item;
}
@end
