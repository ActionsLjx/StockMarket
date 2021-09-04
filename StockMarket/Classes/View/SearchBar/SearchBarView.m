//
//  SearchBarView.m
//  StockMarket
//
//  Created by ljx on 2021/9/4.
//

#import "SearchBarView.h"

@interface SearchBarView()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation SearchBarView


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
    UINib *nib = [UINib nibWithNibName:@"SearchBarView" bundle:[NSBundle mainBundle]];
    _contentView = [nib instantiateWithOwner:self options:nil].firstObject;
    _contentView.frame = self.bounds;
    [self addSubview:_contentView];
}


@end
