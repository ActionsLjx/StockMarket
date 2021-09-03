//
//  AppDelegate.m
//  StockMarket
//
//  Created by 李家先 on 2021/8/24.
//

#import "AppDelegate.h"
#import "BaseTabBarVC.h"
@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = UIColor.whiteColor;
    [self.window makeKeyAndVisible];
    BaseTabBarVC *vc = [[BaseTabBarVC alloc]init];
    self.window.rootViewController = vc;
    return YES;
}


@end
