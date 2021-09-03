//
//  UIColor+JXColor.m
//  StockMarket
//
//  Created by ljx on 2021/9/3.
//

#import "UIColor+JXColor.h"

@implementation UIColor (JXColor)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha{
    //删除字符串中的空格
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    //String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"]) {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6) {
        return [UIColor clearColor];
    }
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r,g,b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)color{
    return [self colorWithHexString:color alpha:1.0f];
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:alpha];
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue{
    return [UIColor colorWithHex:hexValue alpha:1.0];
}

//MARK: Default Color
+(UIColor *)textDeepBlank {
    return [UIColor colorWithRed:51.0/255.0 green:51.0/255.0 blue:51.0/255.0 alpha:1];
}

+(UIColor *)textMiddleBlank {
    return [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1];
}

+(UIColor *)textLightBlank {
    return [UIColor colorWithRed:153.0/255.0 green:153.0/255.0 blue:153.0/255.0 alpha:1];
}

+(UIColor *)textWhite {
    return [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
}

+(UIColor *)textDeepGary {
    return [UIColor colorWithHexString:@"#FFFFFF" alpha:0.65];
}

+(UIColor *)textLightGray {
    return [UIColor colorWithHexString:@"#FFFFFF" alpha:0.85];
}

+(UIColor *)themeColor {
    return [UIColor colorWithRed:1 green:0.55 blue:0.53 alpha:1];
}

+(UIColor *)iconLightGary {
    return [UIColor colorWithRed:0.73 green:0.73 blue:0.73 alpha:1];
}

+(UIColor *)lineBorderColor {
    return [UIColor colorWithHexString:@"#000000" alpha:0.1];
}

+(UIColor *)backgroundColor5 {
    return [UIColor colorWithHexString:@"#000000" alpha:0.05];
}

+(UIColor *)backgroundColor3 {
    return [UIColor colorWithHexString:@"#000000" alpha:0.03];
}

+(UIColor *)btnNormaBlank {
    return [UIColor colorWithRed:51.0/255.0 green:51.0/255.0 blue:51.0/255.0 alpha:1];
}

+(UIColor *)btnPressBlank {
    return [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
}

+(UIColor *)btnDisableBlank {
    return [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
}

+(UIColor *)btnNormaRed {
    return [UIColor colorWithRed:1 green:0.55 blue:0.53 alpha:1];
}

+(UIColor *)btnPressRed {
    return [UIColor colorWithRed:0.93 green:0.45 blue:0.44 alpha:1];
}

+(UIColor *)btnDisableRed {
    return [UIColor colorWithRed:1 green:0.85 blue:0.84 alpha:1];
}

+(UIColor *)barSelectColor {
    return  [UIColor colorWithHexString:@"1870E9" alpha:1.0];
}

+(UIColor *)barDeafultColor{
    return [UIColor colorWithHexString:@"5D6972" alpha:1.0];
}
@end
