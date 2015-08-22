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

-(void)addItemWithIcon:(NSString *)iconName selectedIcon:(NSString *)selectedIconName title:(NSString *)title{
    ZYDockItem *item = [[ZYDockItem alloc]init];
    [self addSubview:item];
    
    [item setTitle:title forState:UIControlStateNormal];
    [item setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];
    [item setImage:[UIImage imageNamed:selectedIconName] forState:UIControlStateSelected];
    
    [item addTarget:self action:@selector(itemEvent:) forControlEvents:UIControlEventTouchDown];
    
    
    NSUInteger count = self.subviews.count;
    CGFloat width = self.frame.size.width /count;
    CGFloat hight = self.frame.size.height;
    
    for (int i = 0; i < count; i++) {
        ZYDockItem *item = self.subviews[i];
        item.tag = i ;
        item.frame = CGRectMake(width*i , 0, width, hight);
    }
    
    if (nil == self.SelectedItem) {
        [self itemEvent:self.subviews[0]];
    }

}

-(void)itemEvent:(ZYDockItem *)item{
    
    //切换按钮状态
    if ([self.delegate respondsToSelector:@selector(dock:itemSelectFrol:to:)]) {
        [self.delegate dock:self itemSelectFrol:(NSInteger)self.SelectedItem.tag to:(NSInteger)item.tag];
    }
    
    self.SelectedItem.selected = NO;
    
    item.selected = YES;
    
    self.SelectedItem = item;
}
@end
