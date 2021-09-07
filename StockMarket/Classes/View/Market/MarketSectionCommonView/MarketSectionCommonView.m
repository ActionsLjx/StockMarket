//
//  MarketSectionCommonView.m
//  StockMarket
//
//  Created by ljx on 2021/9/7.
//

#import "MarketSectionCommonView.h"
@interface MarketSectionCommonView()
@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation MarketSectionCommonView

#pragma mark ---- view初始化

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if(self) {
        [self initWithXib];
    }
    return self;
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self){
        [self initWithXib];
    }
    return self;
}

- (void)initWithXib {
    UINib *nib = [UINib nibWithNibName:@"MarketSectionCommonView" bundle:[NSBundle mainBundle]];
    _contentView = [nib instantiateWithOwner:self options:nil].firstObject;
    _contentView.frame = self.bounds;
    [self addSubview:_contentView];
}

@end
