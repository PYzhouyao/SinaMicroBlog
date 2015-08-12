//
//  ZYNewfeatureController.m
//  ZYSinaMicroBlog
//
//  Created by Yao.zhou on 15/8/7.
//  Copyright (c) 2015年 Yao.zhou. All rights reserved.
//

#import "ZYNewfeatureController.h"
#define kPicCount 4
#define kPageControlW 150

@interface ZYNewfeatureController()<UIScrollViewDelegate>
{
    UIPageControl *_pageControl;
    CGSize _size;
}
@end


@implementation ZYNewfeatureController

#pragma mark 自定义view
- (void)loadView
{
    // self.view直接使用UIImageView设置ImageView尺寸与位置
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"new_feature_background.png"];
    imageView.frame = [UIScreen mainScreen].bounds;
    imageView.userInteractionEnabled = YES;// 开启当前控件与用户交互
    self.view = imageView;
}

#pragma mark 视图加载完毕后调用
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _size = [UIScreen mainScreen].bounds.size;
    UIScrollView *scrollView = [self creatScrollView];
    UIPageControl *pageControl = [self creatPageControl];
    
    [self.view addSubview:scrollView];
    [self.view addSubview:pageControl];
}

#pragma mark - 控件添加方法
#pragma mark 添加scrollView控件
- (UIScrollView *)creatScrollView       // 控件的创建单独抽象成方法
{
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    scrollView.frame = self.view.bounds;
    scrollView.contentSize = CGSizeMake(_size.width * kPicCount, 0);
    scrollView.pagingEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.delegate = self;
    
    //  创建新特性图片设置尺寸位置并添加到scrollView
    for (int i =0; i<kPicCount; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        [scrollView addSubview:imageView];
        NSString *imageName = [NSString stringWithFormat:@"new_feature_%d.png",i+1];
        imageView.image = [UIImage imageNamed:imageName];
        imageView.frame = CGRectMake(_size.width*i, 0, _size.width, _size.height);
        
        //
        if ( kPicCount == i) {
            imageView.userInteractionEnabled = YES;
            [self addShareButton:imageView];
            [self addStartButton:imageView];
        }
    }
    
    return scrollView;
}

#pragma mark 添加pageControl控件
- (UIPageControl *)creatPageControl     // 控件的创建单独抽象成方法
{
    UIPageControl *pageControl = [[UIPageControl alloc]init];
    pageControl.center = CGPointMake(_size.width*0.5, _size.height*0.95);
    pageControl.bounds = CGRectMake(0, 0, kPageControlW, 0);
    pageControl.numberOfPages = kPicCount;
    
    //pageControl指示符颜色用图片代替，效果更美观
    UIImage *checkedPointImage = [UIImage imageNamed:@"new_feature_pagecontrol_checked_point.png"];
    pageControl.currentPageIndicatorTintColor = [UIColor colorWithPatternImage:checkedPointImage];
    UIImage *pointImage = [UIImage imageNamed:@"new_feature_pagecontrol_point.png"];
    pageControl.pageIndicatorTintColor = [UIColor colorWithPatternImage:pointImage];
    
    //scrollView的代理方法中可设置pagecontrol的当前页属性
    
    _pageControl = pageControl;
    
    return pageControl;
}


#pragma mark - 按钮添加方法
#pragma mark 分享按钮添加
- (void)addShareButton:(UIImageView *)imageView         // 新特性展示最后一张图片中"分享"视图单独抽象成方法
{
    
}

#pragma mark 立即体验按钮添加
- (void)addStartButton:(UIImageView *)imageView         // 新特性展示最后一张图片中"体验"按钮单独抽象成方法
{
    
}
@end
