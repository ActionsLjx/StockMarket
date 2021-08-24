//
//  FuncMacros.m
//  StockMarket
//
//  Created by 李家先 on 2021/8/24.
//

#import "FuncMacros.h"

@implementation FuncMacros

+ (void)kUserDeafultsSetValueForKeyWithValue:(id)value key:(NSString *)key {
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

+ (nullable id)kUserDeafultsValueForKey:(NSString *)key{
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];;
}

+ (BOOL)isLogin {
    BOOL isLogin = [FuncMacros kUserDeafultsValueForKey:UserDefaultAuthSign] ? YES : NO;
    return isLogin;
}

#pragma  mark --- 工具类
+ (UIViewController *)getCurrentVC
{
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;

    UIViewController *currentVC = [self getCurrentVCFrom:rootViewController];
    
    return currentVC;
}

+ (UIViewController *)getCurrentVCFrom:(UIViewController *)rootVC
{
    UIViewController *currentVC;
    
    if ([rootVC presentedViewController]) {
        // 视图是被presented出来的
        
        rootVC = [rootVC presentedViewController];
    }
    
    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        // 根视图为UITabBarController
        
        currentVC = [self getCurrentVCFrom:[(UITabBarController *)rootVC selectedViewController]];
        
    } else if ([rootVC isKindOfClass:[UINavigationController class]]){
        // 根视图为UINavigationController
        
        currentVC = [self getCurrentVCFrom:[(UINavigationController *)rootVC visibleViewController]];
        
    } else {
        // 根视图为非导航类
        
        currentVC = rootVC;
    }
    
    return currentVC;
}


+(int)getRandomWithMin:(int)min Max:(int)max{
    if(max == 0){
        return 0;
    }
    int value = (arc4random() % max) - min;
    return  value;
}

+(NSString *)getNowTimeInstervalStr{
    NSDate *today = [NSDate date];
    NSString *timstr = [NSString stringWithFormat:@"%lu",(long)[today timeIntervalSince1970]];
    return timstr;
}

+ (NSString *)fileSizeWithInterge:(NSInteger)size{
    // 1k = 1024, 1m = 1024k
    if (size < 1024) {// 小于1k
        return [NSString stringWithFormat:@"%ldB",(long)size];
    }else if (size < 1024 * 1024){// 小于1m
        CGFloat aFloat = size/1024;
        return [NSString stringWithFormat:@"%.0fK",aFloat];
    }else if (size < 1024 * 1024 * 1024){// 小于1G
        CGFloat aFloat = size/(1024 * 1024);
        return [NSString stringWithFormat:@"%.1fM",aFloat];
    }else{
        CGFloat aFloat = size/(1024*1024*1024);
        return [NSString stringWithFormat:@"%.1fG",aFloat];
    }
}


+(UIAlertController *)cameraNoAccessAlertVC{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"无法使用相机" message:@"请在iPhone的""设置-隐私-相机""中允许访问相机" preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *ac1 = [UIAlertAction actionWithTitle:@"取消" style:(UIAlertActionStyleCancel) handler:nil];
    UIAlertAction *ac2 = [UIAlertAction actionWithTitle:@"设置" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        if([UIApplication.sharedApplication canOpenURL:url]){
            [UIApplication.sharedApplication openURL:url];
        }
    }];
    [alert addAction:ac1];
    [alert addAction:ac2];
    return  alert;
}
@end
