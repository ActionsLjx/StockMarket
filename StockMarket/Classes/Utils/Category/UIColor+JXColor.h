//
//  UIColor+JXColor.h
//  StockMarket
//
//  Created by ljx on 2021/9/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (JXColor)
+ (UIColor *)colorWithHexString:(NSString *)color;
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHex:(NSInteger)hexValue;
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha;

+(UIColor *)textDeepBlank;
+(UIColor *)textMiddleBlank;
+(UIColor *)textLightBlank;
+(UIColor *)textWhite;
+(UIColor *)textDeepGary;
+(UIColor *)textLightGray;
+(UIColor *)themeColor;
+(UIColor *)iconLightGary;
+(UIColor *)lineBorderColor;
+(UIColor *)backgroundColor5;
+(UIColor *)backgroundColor3;

+(UIColor *)btnNormaBlank;
+(UIColor *)btnPressBlank;
+(UIColor *)btnDisableBlank;
+(UIColor *)btnNormaRed;
+(UIColor *)btnPressRed;
+(UIColor *)btnDisableRed;

+(UIColor *)barSelectColor;
+(UIColor *)barDeafultColor;

@end

NS_ASSUME_NONNULL_END
