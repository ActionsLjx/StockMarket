//
//  MarketSectionCommonView.h
//  StockMarket
//
//  Created by ljx on 2021/9/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MarketSectionCommonView : UIView

@property(nonatomic,strong)btnClickBlock showData;
@property(nonatomic,strong)btnClickBlock showMore;
- (void)configUIWithTitle:(NSString *)title
          defaultIsSelect:(BOOL)isSelect;
@end

NS_ASSUME_NONNULL_END
