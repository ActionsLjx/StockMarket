//
//  BaseVC.m
//  StockMarket
//
//  Created by 李家先 on 2021/8/25.
//

#import "BaseVC.h"

@interface BaseVC ()

@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)showBackBtn {
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"left"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(backAction:)];
    [self.navigationItem setLeftBarButtonItem:item];
}

- (void)backAction:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
