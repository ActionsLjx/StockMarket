//
//  PlateView.h
//  StockMarket
//
//  Created by ljx on 2021/9/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlateView : UIView
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UILabel *detailLab;
@property (nonatomic,assign)BOOL isHideDeatilLab;

@end

NS_ASSUME_NONNULL_END
