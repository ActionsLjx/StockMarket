//
//  MarketSectionCommonView.m
//  StockMarket
//
//  Created by ljx on 2021/9/7.
//

#import "MarketSectionCommonView.h"
@interface MarketSectionCommonView()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIButton *showBtn;
@property (weak, nonatomic) IBOutlet UIButton *moreBtn;

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

- (void)configUIWithTitle:(NSString *)title
          defaultIsSelect:(BOOL)isSelect{
    [_showBtn setTitle:title forState:(UIControlStateNormal)];
    _showBtn.selected = isSelect;
}


- (IBAction)showBtnClick:(UIButton *)sender {
    sender.selected = !sender.isSelected;
    if(_showData) {
        _showData(sender.selected);
    }
}

- (IBAction)showMoreBtnClick:(UIButton *)sender {
    if(_showMore) {
        _showMore(1);
    }
}



@end
