//
//  ViewController.m
//  ZZSelectAlert
//
//  Created by iMac on 2017/1/4.
//  Copyright © 2017年 zhouxing. All rights reserved.
//

#import "ViewController.h"
#import "ZZSelectAlert.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *cities;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    cities = @[@"北京",@"天津",@"内蒙古",@"河南",@"河北",@"湖南",@"湖北",@"浙江"];
    
    [self createButtons];
    
}

- (void)showAlert:(UIButton *)button {
    BOOL showCloseButton = NO;
    if (button.tag == 1) {
        showCloseButton = YES;
    }
    
    //显示弹框方法
    [ZZSelectAlert showWithTitle:@"城市选择" titles:cities selectIndex:nil selectValue:^(NSString *selectValue) {
        NSLog(@"选择了 %@",selectValue);
    } showCloseButton:showCloseButton];
}



- (void)createButtons {
    
    UIButton *noCloseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [noCloseButton setTitle:@"无关闭按钮" forState:UIControlStateNormal];
    noCloseButton.backgroundColor = [UIColor orangeColor];
    noCloseButton.frame = CGRectMake(100, 100, 120, 50);
    noCloseButton.tag = 0;
    [noCloseButton addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:noCloseButton];
    
    UIButton *haveCloseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [haveCloseButton setTitle:@"有关闭按钮" forState:UIControlStateNormal];
    haveCloseButton.backgroundColor = [UIColor orangeColor];
    haveCloseButton.frame = CGRectMake(100, 180, 120, 50);
    haveCloseButton.tag = 1;
    [haveCloseButton addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:haveCloseButton];
    
}

@end
