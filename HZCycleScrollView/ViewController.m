//
//  ViewController.m
//  HZCycleScrollView
//
//  Created by huangzhenyu on 2018/7/13.
//  Copyright © 2018年 huangzhenyu. All rights reserved.
//

#import "ViewController.h"
#import "HZCycleScrollView/HZCycleScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HZCycleScrollView *scroll = [[HZCycleScrollView alloc] init];
    scroll.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200);
    scroll.urlArray = @[
                        @"http://ww2.sinaimg.cn/bmiddle/9ecab84ejw1emgd5nd6eaj20c80c8q4a.jpg",
                        @"http://ww4.sinaimg.cn/bmiddle/9e9cb0c9jw1ep7nlyu8waj20c80kptae.jpg",
                        @"http://ww3.sinaimg.cn/bmiddle/8e88b0c1gw1e9lpr1xydcj20gy0o9q6s.jpg",
//                        @"http://ww2.sinaimg.cn/bmiddle/8e88b0c1gw1e9lpr2n1jjj20gy0o9tcc.jpg",
                        ];
//    scroll.urlArray = @[@"",@"",@"",@""];
    scroll.itemSpace = 20;
    scroll.rightLeakSpace = 40;
    scroll.placeHolderImage = [UIImage imageNamed:@"placeHolder"];
    scroll.cycleScrollViewStyle = HZCycleScrollViewStyleLoop;
    [self.view addSubview:scroll];
}
@end
