//
//  UIBarButtonItem+ZY.h
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/7.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ZY)
- (id)initWithImageName:(NSString *)imageName highLightedImageName:(NSString *)highLight addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

+ (id)barButtonItemWithImageName:(NSString *)imageName highLightedImageName:(NSString *)highLight addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

@end
