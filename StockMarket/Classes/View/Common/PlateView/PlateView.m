//
//  PlateView.m
//  StockMarket
//
//  Created by ljx on 2021/9/5.
//

#import "PlateView.h"
@interface PlateView()

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraints;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UILabel *detailLab;
@property (weak, nonatomic) IBOutlet UILabel *topNumLab;
@property (weak, nonatomic) IBOutlet UILabel *bottomNumLab;

@end

@implementation PlateView
#pragma mark ---- UI设置

- (void)setIsBig:(BOOL)isBig {
    [_detailLab setHidden:isBig];
    self.topConstraints.constant = isBig ? -15 : 5;
    CGFloat topNumFontSize = isBig ? 16 : 14;
    CGFloat bottomNumFontSize = isBig ? 12 : 10;
    _topNumLab.font = [UIFont systemFontOfSize:topNumFontSize];
    _detailLab.font =  [UIFont systemFontOfSize:bottomNumFontSize];
    _bottomNumLab.font = [UIFont systemFontOfSize:bottomNumFontSize];
}
#pragma mark ---- 初始化
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if(self) {
        [self initWithXib];
    }
    return self;
}


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self initWithXib];
    }
    return self;
}

- (void)initWithXib {
    UINib *nib = [UINib nibWithNibName:@"PlateView" bundle:[NSBundle mainBundle]];
    _contentView = [nib instantiateWithOwner:self options:nil].firstObject;
    _contentView.frame = self.bounds;
    _isBig = NO;
    [self addSubview:_contentView];

}


@end
