//
//  HZCycleItemView.m
//  HZCycleScrollView
//
//  Created by huangzhenyu on 2018/7/13.
//  Copyright © 2018年 huangzhenyu. All rights reserved.
//

#import "HZCycleItemView.h"
@interface HZCycleItemView()

@end

@implementation HZCycleItemView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}

- (void)initUI{
    //设置间距默认值
    self.itemLeftSpace = 0;
    self.itemRightSpace = 0;
    
    [self addSubview:self.imageView];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self adjustFrame];
}

- (void)adjustFrame{
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.imageView.frame = CGRectMake(self.itemLeftSpace, 0, width - self.itemLeftSpace - self.itemRightSpace, height);
}

#pragma mark getter setter
- (UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

- (void)setItemLeftSpace:(CGFloat)itemLeftSpace{
    _itemLeftSpace = itemLeftSpace;
    [self adjustFrame];
}

- (void)setItemRightSpace:(CGFloat)itemRightSpace{
    _itemRightSpace = itemRightSpace;
    [self adjustFrame];
}
@end
