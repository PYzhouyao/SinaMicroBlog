//
//  ZYDock.h
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  ZYDock,ZYDockItem;

#pragma mark ZYDock协议
@protocol ZYDockDelegate<NSObject>
@optional
-(void)dock:(ZYDock *)dock itemSelectFrol:(NSInteger)sourceIndex to:(NSInteger)toIndex;
@end

@interface ZYDock : UIView

// Dock中的按钮抽取出来做为成员变量方便事件响应与方法传递
@property (nonatomic,strong)ZYDockItem *SelectedItem;

// 定义一个代理属性，将Dock中的按钮事件供外界调用
@property (nonatomic,assign)id<ZYDockDelegate> delegate;

// Dock上添加按键的一个方法
-(void)addItemWithIcon:(NSString *)iconName selectedIcon:(NSString *)selectedIconName title:(NSString *)title;

@end
