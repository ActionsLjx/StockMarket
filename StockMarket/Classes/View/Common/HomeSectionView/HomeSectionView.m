//
//  HomeSectionView.m
//  StockMarket
//
//  Created by ljx on 2021/9/6.
//

#import "HomeSectionView.h"

@interface HomeSectionView()
@property (strong, nonatomic) IBOutlet UIView *contentView;


@end

@implementation HomeSectionView
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
    UINib *nib = [UINib nibWithNibName:@"HomeSectionView" bundle:[NSBundle mainBundle]];
    _contentView = [nib instantiateWithOwner:self options:nil].firstObject;
    _contentView.frame = self.bounds;
    [self addSubview:_contentView];
}


@end
