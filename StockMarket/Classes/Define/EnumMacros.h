//
//  EnumMacros.h
//  StockMarket
//
//  Created by 李家先 on 2021/8/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EnumMacros : NSObject

typedef NSString *UserDefaultKey NS_STRING_ENUM;
FOUNDATION_EXPORT UserDefaultKey const UserDefaultAuthSign;
FOUNDATION_EXTERN UserDefaultKey const UserDeafultFirstOpen;

@end

NS_ASSUME_NONNULL_END
