//
//  ZYTableViewCell.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/15.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import "ZYTableViewCell.h"
@interface ZYTableViewCell ()
{
    UIImageView *_normalImage;
    UIImageView *_selectedImage;
    UIImageView *_cellImageView;
}
@end

@implementation ZYTableViewCell

#pragma mark - 修改ios7中Cell的尺寸位置
- (void) layoutSubviews
{
    [super layoutSubviews];
    // iOS7默认Cell宽度为320充满整个屏幕，而iOS6Cell宽度为300，为保持一致，重写该方法统一风格
    if ([[[UIDevice currentDevice]systemVersion]floatValue] >= 7.0) {
        CGRect fram = self.frame;
        fram.size.width = 300;// Cell宽度设置成300
        fram.origin.x = 10;// x右移10象素使Cell居中
        self.frame = fram;
    }
}
#pragma mark - 自定义Cell样式
#pragma mark 设置Cell基本样式
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _normalImage = [[UIImageView alloc]init];
        _selectedImage = [[UIImageView alloc]init];
        
        self.backgroundView = _normalImage;
        self.selectedBackgroundView = _selectedImage;
        self.textLabel.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setGroupCellStyleWithTableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
@end
