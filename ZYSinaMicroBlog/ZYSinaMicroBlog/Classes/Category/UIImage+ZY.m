//
//  UIImage+ZY.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/15.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import "UIImage+ZY.h"

@implementation UIImage (ZY)
+ (UIImage *)fullScreenImage:(NSString *)string
{
    if (isIPhone5) {
        
    }
    return  [self imageNamed:string];
}

+ (UIImage *)resizeImage:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:5 topCapHeight:5];
}

@end
