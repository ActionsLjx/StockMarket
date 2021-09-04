//
//  BaseNavigationVC.m
//  StockMarket
//
//  Created by 李家先 on 2021/8/25.
//

#import "BaseNavigationVC.h"

@interface BaseNavigationVC ()

@end

@implementation BaseNavigationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBarHidden = NO;
    [self.navigationBar setTranslucent:YES];
    [self.navigationBar setShadowImage:[UIImage new]];
    [self.navigationBar setBarTintColor:[UIColor colorWithHexString:@"1B2228" alpha:1.0]];
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColor.whiteColor}];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count == 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
