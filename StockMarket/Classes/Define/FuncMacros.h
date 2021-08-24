//
//  FuncMacros.h
//  StockMarket
//
//  Created by 李家先 on 2021/8/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EnumMacros.h"
NS_ASSUME_NONNULL_BEGIN

@interface FuncMacros : NSObject

+ (void)kUserDeafultsSetValueForKeyWithValue: (nullable id) value
                                         key: (NSString *)key;

+ (nullable id)kUserDeafultsValueForKey: (NSString *)key;

+ (void)kUserDeafultsRemoveForKey: (NSString *)key;

+ (BOOL)isLogin;

+ (UIViewController *)getCurrentVC;

+ (int)getRandomWithMin:(int)min
                    Max:(int)max;

+ (NSString *)getNowTimeInstervalStr;

+ (NSString *)fileSizeWithInterge:(NSInteger)size;

+ (UIAlertController *)cameraNoAccessAlertVC;


@end

NS_ASSUME_NONNULL_END
