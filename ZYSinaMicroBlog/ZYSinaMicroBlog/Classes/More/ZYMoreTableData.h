//
//  ZYMoreTableData.h
//  ZYSinaMicroBlog
//
//  Created by Yao on 15/9/11.
//  Copyright © 2015年 Yao.zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYMoreTableData : NSObject

@property (nonatomic,copy) NSString  *icon;
@property (nonatomic,copy) NSString  *name;
@property (nonatomic,assign) NSInteger  row;

- (id)initWithDict:(NSDictionary *)dict;
+ (id)tableDateWithDict:(NSDictionary *)dict;

@end
