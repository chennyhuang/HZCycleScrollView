//
//  HZCycleItemView.h
//  HZCycleScrollView
//
//  Created by huangzhenyu on 2018/7/13.
//  Copyright © 2018年 huangzhenyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZCycleItemView : UIView
@property (nonatomic,strong) UIImageView *imageView;
//item内部间距
@property (nonatomic,assign) CGFloat itemLeftSpace;
@property (nonatomic,assign) CGFloat itemRightSpace;
@end
