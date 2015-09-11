//
//  ZYMoreTableData.m
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/11.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import "ZYMoreTableData.h"

@implementation ZYMoreTableData
- (id)initWithDict:(NSDictionary *)dict{
    self = [super init];
    if (self) {
        self.icon = dict[@"icon"];
        self.name = dict[@"name"];
        self.row = [dict[@"row"] integerValue];
    }
    return self;
}


+ (id)tableDateWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}
@end
