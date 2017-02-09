//
//  ViewController.m
//  图片轮播器
//
//  Created by m on 2017/2/9.
//  Copyright © 2017年 XLJ. All rights reserved.
//
/**
 * 属性:提供了getter和setter
 * 成员变量:真正保存数据
 */

#import "ViewController.h"
#import "XLJRunLoopView.h"

//类扩展、匿名分类，定义私有属性和方法
@interface ViewController ()

@end

@implementation ViewController
{
    NSArray <NSURL *> *_urls;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    
    [self creatUI];
}

- (void)creatUI
{
    XLJRunLoopView *loopView = [[XLJRunLoopView alloc] initWithURLs:_urls];
    
    loopView.frame = CGRectMake(20, 20, self.view.bounds.size.width - 40, 200);
    [self.view addSubview:loopView];
}

- (void)loadData
{
    NSMutableArray *array = @[].mutableCopy;
    
    for (NSInteger i = 0; i < 6; i++) {
        NSString *filedName = [NSString stringWithFormat:@"%zd.jpg",i+1];
        NSURL *url = [[NSBundle mainBundle] URLForResource:filedName withExtension:nil];
        [array addObject:url];
    }
    
    _urls = array.copy;
}




@end
