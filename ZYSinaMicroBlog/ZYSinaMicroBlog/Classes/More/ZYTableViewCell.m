//
//  ZYTableViewCell.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/15.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import "ZYTableViewCell.h"
#import "UIImage+ZY.h"
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

#pragma mark 设置Cell背景图片
- (void)setGroupCellStyleWithTableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger rows = [tableView numberOfRowsInSection:indexPath.section];
    self.textLabel.textAlignment = NSTextAlignmentLeft;
    self.textLabel.textColor = [UIColor blackColor];
    self.textLabel.font = [UIFont systemFontOfSize:15];
    
    //设置Cell背景样式，美化视觉效果，由于圆角的设计使得处于不同位置的Cell背景图片不尽相同
    if (1 == rows)//只有一行
    {
        _normalImage.image = [UIImage resizeImage:@"common_card_background.png"];
        _selectedImage.image = [UIImage resizeImage:@"common_card_background_highlighted.png"];
    }
    else if (0 == indexPath.row)//首行
    {
        _normalImage.image = [UIImage resizeImage:@"common_card_top_background.png"];
        _selectedImage.image = [UIImage resizeImage:@"common_card_top_background_highlighted.png"];
    }
    else if (rows -1 == indexPath.row)//末行
    {
        _normalImage.image = [UIImage resizeImage:@"common_card_bottom_background.png"];
        _selectedImage.image = [UIImage resizeImage:@"common_card_bottom_background_highlighted.png"];
    }
    else//中间行
    {
        _normalImage.image = [UIImage resizeImage:@"common_card_middle_background.png"];
        _selectedImage.image = [UIImage resizeImage:@"common_card_middle_background_highlighted.png"];
    }
}

#pragma mark - 自定义Cell附属样式
-(void)setCellType:(CellType)cellType
{
    switch (cellType) {
            
            // 无附属样式
        case kCellTypeNone:
            self.accessoryView = nil;
            break;
            
            // Cell右侧添加箭头图标样式
        case kCellTypeArrow:
            if (_cellImageView == nil) {
                _cellImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@""]];
            }
            self.accessoryView = _cellImageView;
            break;
            
            // Cell右侧添加标签样式
        case kCellTypeLabel:
            if (_accessoryLabel == nil) {
                _accessoryLabel = [[UILabel alloc]init];
                _accessoryLabel.text = @"展开";
                _accessoryLabel.bounds = CGRectMake(0, 0, 70, 44);
                _accessoryLabel.backgroundColor = [UIColor clearColor];
                _accessoryLabel.textColor = [UIColor grayColor];
                _accessoryLabel.textAlignment = NSTextAlignmentCenter;
                _accessoryLabel.font = [UIFont systemFontOfSize:12];
            }
            self.accessoryView = _accessoryLabel;
            break;
            
            // Cell右侧添加开关样式
        case kCellTypeSwitch:
            if (_accessorySwitch == nil) {
                _accessorySwitch = [[UISwitch alloc]init];
            }
            self.accessoryView = _accessorySwitch;
            break;
            
            // 整个Cell为红色按钮样式
        case kCellRedButton:
        {
            self.textLabel.textAlignment = NSTextAlignmentCenter;
            self.textLabel.textColor = [UIColor whiteColor];
            self.textLabel.font = [UIFont systemFontOfSize:17];
            _normalImage.image = [UIImage resizeImage:@"common_button_big_red.png"];
            _selectedImage.image = [UIImage resizeImage:@"common_button_big_red_highlighted.png"];
            self.accessoryView = nil;
        }
            break;
        default:
            self.accessoryView = nil;
            break;
    }
}
@end
