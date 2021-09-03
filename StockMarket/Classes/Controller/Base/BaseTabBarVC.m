//
//  BaseTabBarVC.m
//  StockMarket
//
//  Created by 李家先 on 2021/8/25.
//

#import "BaseTabBarVC.h"
#import "HomeVC.h"
#import "MarketVC.h"
#import "SettingVC.h"
#import "BaseNavigationVC.h"
@interface BaseTabBarVC ()<UITabBarControllerDelegate>

@end

@implementation BaseTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHexString:@"1B2228" alpha:1];
    self.tabBar.barTintColor = [UIColor colorWithHexString:@"1B2228" alpha:1];
    self.tabBar.tintColor = [UIColor colorWithHexString:@"1B2228" alpha:1];
    if (@available(ios 10.0, *)){
        self.tabBar.unselectedItemTintColor = [UIColor textMiddleBlank];
    }
    [self configChildController];
    self.delegate = self;
}

- (void)configChildController {
    HomeVC *homeVC = [[HomeVC alloc]init];
    BaseNavigationVC *homeRoot = [self configTabBarController:homeVC title:@"" imageName:@"homeDefault" selectImg:@"homeSelect"];
    MarketVC *markVC = [[MarketVC alloc]init];
    BaseNavigationVC *markRoot = [self configTabBarController:markVC title:@"" imageName:@"marketDefault" selectImg:@"marketSelect"];
    SettingVC *settingVc = [[SettingVC alloc]init];
    BaseNavigationVC *settingRoot = [self configTabBarController:settingVc title:@"" imageName:@"settingDefault" selectImg:@"settingSelect"];
    [self setViewControllers:@[homeRoot,markRoot,settingRoot]];
    
}

- (BaseNavigationVC *)configTabBarController:(UIViewController *)vc
                                       title:(NSString *)title
                                   imageName:(NSString *)imgName
                                   selectImg:(NSString *)selectImgName{
    UIColor *defauleColor = [UIColor colorWithHexString:@"5D6972" alpha:1.0];
    UIColor *selectColor = [UIColor colorWithHexString:@"1870E9" alpha:1.0];
    vc.tabBarItem.title = title;
    if(!title){
        [vc.tabBarItem setImageInsets:UIEdgeInsetsMake(8, 0, -8, 0)];
    }
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:defauleColor} forState:(UIControlStateNormal)];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:selectColor} forState:(UIControlStateNormal)];
    [vc.tabBarItem setImage:[[UIImage imageNamed:imgName]imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)]];
    [vc.tabBarItem setSelectedImage:[[UIImage imageNamed:selectImgName]imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)]];
    BaseNavigationVC *root = [[BaseNavigationVC alloc]initWithRootViewController:vc];
    return  root;
    
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    return  YES;
}

@end
