//
//  cell2.h
//  弹出视图
//
//  Created by Apple-Mini on 16/3/14.
//  Copyright © 2016年 微赢互动. All rights reserved.
//

#import <UIKit/UIKit.h>
#define screen_Width  [UIScreen mainScreen].bounds.size.width
#define screen_Height  [UIScreen mainScreen].bounds.size.height
#define MJRandomColor [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1]
@interface cell2 : UITableViewCell
@property (nonatomic, strong) UIButton *HeadBtn;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *selectedBtn;



@end
