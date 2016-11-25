//
//  ViewController.m
//  SelectAlertDemo
//
//  Created by apple on 2016/11/25.
//  Copyright © 2016年 周兴. All rights reserved.
//

#import "ViewController.h"
#import "SelectAlert.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController
{
    NSArray *titles;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    titles = @[@"本地城镇",@"本地农村",@"外地城镇",@"外地农村",@"本地农村",@"外地城镇",@"外地农村",@"本地农村",@"外地城镇",@"外地农村",@"本地农村",@"外地城镇",@"外地农村"];
    
}

- (IBAction)showAction:(id)sender {
    
    [SelectAlert showWithTitle:@"选择你的户口类型" titles:titles selectIndex:^(NSInteger selectIndex) {
        NSLog(@"选择了第%ld个",selectIndex);
    } selectValue:^(NSString *selectValue) {
        NSLog(@"选择的值为%@",selectValue);
        self.titleLabel.text = selectValue;
    } showCloseButton:NO];
    
}

- (IBAction)showWithCloseButton:(id)sender {
    
    [SelectAlert showWithTitle:@"选择你的户口类型" titles:titles selectIndex:^(NSInteger selectIndex) {
    } selectValue:^(NSString *selectValue) {
        self.titleLabel.text = selectValue;
    } showCloseButton:YES];
}


@end
