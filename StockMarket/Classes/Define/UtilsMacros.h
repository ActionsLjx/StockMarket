//
//  UtilsMacros.h
//  StockMarket
//
//  Created by 李家先 on 2021/8/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
#pragma mark --- System

#define kScreenBounds ([[UIScreen mainScreen] bounds]
#define kScreenWidth           ([[UIScreen mainScreen] bounds].size.width)
#define kScreenHeight           ([[UIScreen mainScreen] bounds].size.height)
static const CGFloat kNavigationBarHeight = 44.0;
#define kStatusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height
#define kNavBarAndStatusBarHeight = kNavigationBarHeight + kStatusBarHeight

#define kSystemVersion     ([[UIDevice currentDevice].systemVersion floatValue])
#define kCachePath [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]
#define kApplication            [UIApplication sharedApplication]
#define kKeyWindow              [UIApplication sharedApplication].keyWindow
#define kTopViewController [UIApplication sharedApplication].keyWindow.rootViewController
#define kAppDelegate            [UIApplication sharedApplication].delegate
#define kUserDefaults           [NSUserDefaults standardUserDefaults]
#define kNotifCenter            [NSNotificationCenter defaultCenter]

@interface UtilsMacros : NSObject

@end

NS_ASSUME_NONNULL_END
