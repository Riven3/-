//
//  cell3.m
//  弹出视图
//
//  Created by Apple-Mini on 16/3/14.
//  Copyright © 2016年 微赢互动. All rights reserved.
//

#import "cell3.h"

@implementation cell3

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
 // 55 27 390 105
        self.BaoYue = [[UIButton alloc]initWithFrame:CGRectMake(55.0f/1080.0f * screen_Width, 27.0f/1080.0f  *screen_Width, 390.0f/1080.0f  *screen_Width, 105.0f/1080.0f  *screen_Width)];
        self.BaoYue.layer.cornerRadius = 10.0f;
        self.BaoYue.layer.masksToBounds = YES;
        self.BaoYue.backgroundColor =    [UIColor colorWithRed:255.0f/255.0f green:0 blue:255.0f/255.0f alpha:1];
        [self.BaoYue setTitle:@"断点" forState:UIControlStateNormal];
        [self.BaoYue setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.BaoYue.font = [UIFont systemFontOfSize:15.0f];
        [self addSubview:self.BaoYue];
 //135
        self.DianBo = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.BaoYue.frame) + 135.0f/1080.0f * screen_Width, 27.0f/1080.0f  *screen_Width, 390.0f/1080.0f  *screen_Width, 105.0f/1080.0f  *screen_Width)];
        self.DianBo.layer.cornerRadius = 10.0f;
        self.DianBo.layer.masksToBounds = YES;
        self.DianBo.backgroundColor = [UIColor colorWithRed:255.0f/255.0f green:0 blue:255.0f/255.0f alpha:1];
        [self.DianBo setTitle:@"BUG" forState:UIControlStateNormal];
        [self.DianBo setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.DianBo.font = [UIFont systemFontOfSize:15.0f];
        [self addSubview:self.DianBo];
    }
    return self;
}


@end
