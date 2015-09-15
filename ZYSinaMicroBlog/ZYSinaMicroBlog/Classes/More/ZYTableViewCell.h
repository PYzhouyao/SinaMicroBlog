//
//  ZYTableViewCell.h
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/15.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCellTypeNone,
    kCellTypeArrow,
    kCellTypeLabel,
    kCellTypeSwitch,
    kCellRedButton
}CellType;

@interface ZYTableViewCell : UITableViewCell

@property (nonatomic, readonly) UILabel     *accessoryLabel;
@property (nonatomic, assign) CellType      cellType;
@property (nonatomic, strong) UISwitch      *accessorySwitch;

- (void)setGroupCellStyleWithTableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;


@end
