//
//  ZYCommon.h
//  ZYSinaMicroBlog
//
//  Created by Yao.zhou on 15/8/7.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#ifndef ZYSinaMicroBlog_ZYCommon_h
#define ZYSinaMicroBlog_ZYCommon_h

#define isIPhone5 ([UIScreen mainScreen].bounds.size.height == 568)

// 用MyLog替代NSLog，调试时输出日志，正式发布时自动取消日志输出代码
#ifdef DEBUG
#define ZYLog(...) NSLog(__VA_ARGS__)
#else
#define ZYLog(...)
#endif

//所有的工具类头文件由这里统一导入
#import "ZYNavigationController.h"


#endif
