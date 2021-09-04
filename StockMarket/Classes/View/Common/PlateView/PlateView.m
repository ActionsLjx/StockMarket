//
//  PlateView.m
//  StockMarket
//
//  Created by ljx on 2021/9/5.
//

#import "PlateView.h"
@interface PlateView()

@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation PlateView

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
    [self addSubview:_contentView];
}
@end
