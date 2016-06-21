//
//  AlertViewController.m
//  弹出视图
//
//  Created by Apple-Mini on 16/3/14.
//  Copyright © 2016年 微赢互动. All rights reserved.
//

#import "AlertViewController.h"
#import "cell2.h"
#import "cell3.h"
#import "cell1.h"


@interface AlertViewController()<UITableViewDataSource, UITableViewDelegate>{
    UIView *V;
    UITableView *TB;
    UIButton *btn;
}
@end
@implementation AlertViewController



- (void)viewDidLoad{
    [super viewDidLoad];
    //[UIViewController load];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 60)];
    [button setTitle:@"HELLO" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor purpleColor];
    V = [[UIView alloc]initWithFrame:CGRectMake(0, 0, screen_Width, screen_Height)];
    V.backgroundColor =  [[UIColor blackColor] colorWithAlphaComponent:0];
    V.hidden = YES;
    //V.alpha = 0;
    
    UITapGestureRecognizer *tp = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(DissMissVWith:)];
    [V addGestureRecognizer:tp];
    [[[UIApplication sharedApplication]keyWindow] addSubview:V];
    [self createTB];

    [button addTarget:self action:@selector(toAlert) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)toAlert{
    //NSLog(@"弹出视图");
    //xbViewController *xn = [[xbViewController alloc]init];
   // [self.navigationController pushViewController:xn animated:YES];
    [UIView animateWithDuration:0.3 animations:^{
        V.hidden = NO;
        TB.frame = CGRectMake(30.0f/1080.f  *screen_Width,345.0f/1920.0f * screen_Height , 1025.0f/1080.0f  *screen_Width, 1300.0f/1920.0f  *screen_Height);
        V.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.5];
        //V.alpha = 0.5;
        //V.frame = CGRectMake(0, 0, screen_Width, screen_Height);
    }];
   
}

- (void)createTB{
    TB =[[UITableView alloc]initWithFrame:CGRectMake(30.0f/1080.f  *screen_Width,345.0f/1920.0f * screen_Height , 1025.0f/1080.0f  *screen_Width, 0.0f/1920.0f  *screen_Height) style:UITableViewStylePlain];
    
    TB.delegate = self;
    TB.dataSource  =self;
    TB.scrollEnabled = NO;
    
    TB.separatorInset = UIEdgeInsetsMake(0, 0, 0, 50.0f/1080.0f  * screen_Width);
    
    [V addSubview:TB];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        
        cell1 *CELL = [tableView dequeueReusableCellWithIdentifier:@"CE"];
        
        if (!CELL) {
            
            CELL = [[cell1 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CE"];
        }
        return CELL;
    
    }else if (indexPath.row == 1 || indexPath.row == 2) {
        cell2 *CELL = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
        
        if (!CELL) {
            
            CELL = [[cell2 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CELL"];
            
        }
        if (indexPath.row == 1) {
            [CELL.HeadBtn setBackgroundImage:[UIImage imageNamed:@"wx"] forState:UIControlStateNormal];
            CELL.titleLabel.text = @"微信支付";
        }else{
            [CELL.HeadBtn setBackgroundImage:[UIImage imageNamed:@"alipay"] forState:UIControlStateNormal];
            CELL.titleLabel.text = @"支付宝支付";
        }
        [CELL.selectedBtn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        return CELL;

    }else{
        cell3 *CELL = [tableView dequeueReusableCellWithIdentifier:@"CEL"];
    if (!CELL) {
                
        CELL = [[cell3 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CEL"];
                
        }
        
        return CELL;
    }
}

- (void)click:(UIButton *)button{
    if(button!=btn){
        btn.selected=NO;
        btn=button;
    }
    btn.selected=YES;
}

-(void) DissMissVWith:(UITapGestureRecognizer *)sender{
    
    CGMutablePathRef pathRef = CGPathCreateMutable();
    CGPathMoveToPoint(pathRef, NULL, TB.frame.origin.x, TB.frame.origin.y);
    CGPathAddLineToPoint(pathRef, NULL,TB.frame.origin.x, CGRectGetMaxY(TB.frame));
    CGPathAddLineToPoint(pathRef, NULL,CGRectGetMaxX(TB.frame), CGRectGetMaxY(TB.frame));
    CGPathAddLineToPoint(pathRef, NULL,CGRectGetMaxX(TB.frame), TB.frame.origin.y);
    CGPathAddLineToPoint(pathRef, NULL,TB.frame.origin.x, TB.frame.origin.y);
    CGPathCloseSubpath(pathRef);
    
    CGPoint point = [sender locationInView:V];
    if (!CGPathContainsPoint(pathRef, NULL, point, NO)) {
        [UIView animateWithDuration:0.3 animations:^{
            V.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0];
            TB.frame = CGRectMake(30.0f/1080.f  *screen_Width,345.0f/1920.0f * screen_Height , 1025.0f/1080.0f  *screen_Width, 0);
        } completion:^(BOOL finished) {
              V.hidden = YES;
        }];
    }else{
      
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
      return  770.0f/1080.0f  *screen_Width;

    }else  if (indexPath.row == 2 || indexPath.row == 1) {
       return 130.0f/1080.0f  *screen_Width;
    }else{
       return 270.0f/1080.0f  *screen_Width;
    }
}


@end
