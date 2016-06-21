//
//  cell2.m
//  弹出视图
//
//  Created by Apple-Mini on 16/3/14.
//  Copyright © 2016年 微赢互动. All rights reserved.
//

#import "cell2.h"

@implementation cell2

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    //10  40 108 108
        self.HeadBtn = [[UIButton alloc]initWithFrame:CGRectMake(40.0f/1080.0f  *screen_Width, 10.0f/1080.0f * screen_Width, 108.0f/1080.0f  *screen_Width, 108.0f/1080.0f  *screen_Width)];
        self.HeadBtn.layer.cornerRadius = 7.0f;
        self.HeadBtn.layer.masksToBounds = YES;
        
        self.HeadBtn.backgroundColor = MJRandomColor;
        [self addSubview:self.HeadBtn];
        
    //10
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.HeadBtn.frame) + 10.0f/1080.0f  *screen_Width, CGRectGetMinY(self.HeadBtn.frame), screen_Width - CGRectGetMaxX(self.HeadBtn.frame) + 10.0f/1080.0f  *screen_Width - 105.0f/1080.0f  *screen_Width, CGRectGetHeight(self.HeadBtn.frame))];
        self.titleLabel.text = @"微信支付";
        self.titleLabel.textColor = [UIColor lightGrayColor];
        self.titleLabel.font = [UIFont systemFontOfSize:16.0f];
        [self addSubview:self.titleLabel];
    //105  22 80 80
        self.selectedBtn = [[UIButton alloc]initWithFrame:CGRectMake(screen_Width - 165.0f/1080.0f  *screen_Width, 22.0f/1080.0f  *screen_Width, 80.0f/1080.0f  * screen_Width,80.0f/1080.0f  * screen_Width)];
        [self.selectedBtn setBackgroundImage:[UIImage imageNamed:@"s1"] forState:UIControlStateNormal];
        [self.selectedBtn setBackgroundImage:[UIImage imageNamed:@"s2"] forState:UIControlStateSelected];
        
        //[self.selectedBtn addTarget:self action:@selector(btnFunction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.selectedBtn];
    }
    return self;
}
- (void)btnFunction{
    static BOOL zt = NO;
    if (!zt) {
        self.selectedBtn.selected = YES;
    }else{
        self.selectedBtn.selected = NO;
    }
    zt = !zt;
}

@end
