//
//  cell1.m
//  弹出视图
//
//  Created by Apple-Mini on 16/3/14.
//  Copyright © 2016年 微赢互动. All rights reserved.
//

#import "cell1.h"

@implementation cell1

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
   self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    //  0 0 660 screenw - 60
        self.HeadImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, screen_Width - 60.0f/1080.0f * screen_Width, 660.0f/1080.0f * screen_Width)];
        self.HeadImg.image = [UIImage imageNamed:@"girl.jpg"];
        [self addSubview:self.HeadImg];
    // 30 0 110
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f/1024.0f  *screen_Width, CGRectGetMaxY(self.HeadImg.frame), screen_Width - 60.0f/1080.0f * screen_Width, 110.0f/1080.0f  *screen_Width)];
        self.titleLabel.text = @"  选择支付方式";
        self.titleLabel.backgroundColor = [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:242.0f/255.0f alpha:1];
        
        [self addSubview:self.titleLabel];
        
    }
    return self;
}



@end
