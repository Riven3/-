//
//  cell1.h
//  弹出视图
//
//  Created by Apple-Mini on 16/3/14.
//  Copyright © 2016年 微赢互动. All rights reserved.
//

#import <UIKit/UIKit.h>
#define screen_Width  [UIScreen mainScreen].bounds.size.width
#define screen_Height  [UIScreen mainScreen].bounds.size.height
@interface cell1 : UITableViewCell
@property (nonatomic, strong)UIImageView *HeadImg;
@property (nonatomic, strong)UILabel *titleLabel;


@end
