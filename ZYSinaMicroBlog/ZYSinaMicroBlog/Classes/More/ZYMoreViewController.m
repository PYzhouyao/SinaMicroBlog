//
//  ZYMoreViewController.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/8/22.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYMoreViewController.h"
#import "ZYMoreTableData.h"
#import "ZYTableViewCell.h"

@interface ZYMoreViewController ()
{
    NSMutableArray *_dataSource;
}
@end

@implementation ZYMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"更多";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    [self loadData];
    [self buildTable];

}

#pragma mark - 加载数据模型
- (void)loadData{
    _dataSource = [NSMutableArray array];
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"More" withExtension:@"plist"];
    
    NSArray *plistData = [NSArray arrayWithContentsOfURL:url]; // 加载Plist文件到临时数组

    for (int i = 0 ; i<plistData.count; i++) {
        // 两个循环嵌套加载数据到模型
        NSMutableArray *array = [NSMutableArray array]; // --1._dataSource  数组
        [_dataSource addObject:array];          //+---2.array数组(Section)
        
        for (int j=0; j<[plistData[i] count]; j++) {
            // +-----3.data     数据模型(Row)
            ZYMoreTableData *data = [ZYMoreTableData tableDateWithDict:plistData[i][j]];// 将每行数据创建数据模型并以行为单位存储到数组
            [array addObject:data];// 加载到单位组中
        }
    }
}



#pragma mark - 创建表格
- (void)buildTable
{
    // 清除表格底图，加载表格底色
    self.tableView.backgroundView = nil;
    self.tableView.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1];
    
    // 设置表格底隔高度，清除表格栅隔线
    self.tableView.sectionFooterHeight = 0;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}

#pragma mark - Table view data source
#pragma mark 表格组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _dataSource.count;
}

#pragma mark 每组表格行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_dataSource[section] count];
}

#pragma mark 每行表格内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger sections = [tableView numberOfSections];
    
    //
    static NSString *identifier = @"cell";
    ZYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (nil == cell) {
        cell = [[ZYTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    //
    [cell setGroupCellStyleWithTableView:tableView cellForRowAtIndexPath:indexPath];
    cell.textLabel.text = [_dataSource[indexPath.section][indexPath.row] name];
    
    //
    if (indexPath.section == 2) {
        cell.cellType = kCellTypeLabel;
        cell.accessoryLabel.text = indexPath.row ? @"经典模式":@"有图模式";
    }
    else if (indexPath.section == sections -1)
    {
        cell.cellType = kCellRedButton;
    }
    else
    {
        cell.cellType = kCellTypeArrow;
    }
    
    return cell;
}

#pragma mark - TableView代理方法
// 表格点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}
@end
