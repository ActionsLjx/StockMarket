//
//  MarketSectionOneView.m
//  StockMarket
//
//  Created by ljx on 2021/9/7.
//

#import "MarketSectionOneView.h"
typedef void(^btnClickBlock)(NSInteger tag);
@interface MarketSectionOneView()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnArr;
@property (assign,nonatomic)NSInteger selectTag;
@property (nonatomic,strong)btnClickBlock blcok;
@end

@implementation MarketSectionOneView


- (void)setSelectTag:(NSInteger)selectTag {
    for (UIButton *btn in _btnArr) {
        NSString *colorHex = selectTag == btn.tag ? @"1870E9" : @"5D6972";
        [btn setTitleColor:[UIColor colorWithHexString:colorHex] forState:(UIControlStateNormal)];
    }
}

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
    UINib *nib = [UINib nibWithNibName:@"MarketSectionOneView" bundle:[NSBundle mainBundle]];
    _contentView = [nib instantiateWithOwner:self options:nil].firstObject;
    _contentView.frame = self.bounds;
    [self addSubview:_contentView];
    self.selectTag = 0;
}

- (IBAction)btnClick:(UIButton *)sender {
    self.selectTag = sender.tag;
    if(_blcok){
        _blcok(sender.tag);
    }
}




@end
