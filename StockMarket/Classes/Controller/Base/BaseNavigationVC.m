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
    self.navigationBarHidden = YES;
    [self.navigationBar setTranslucent:NO];
    [self.navigationBar setShadowImage:[UIImage new]];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count == 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
