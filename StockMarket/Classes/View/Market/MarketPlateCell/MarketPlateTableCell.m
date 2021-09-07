//
//  MarketPlateTableCell.m
//  StockMarket
//
//  Created by ljx on 2021/9/7.
//

#import "MarketPlateTableCell.h"
#import "PlateView.h"
@interface MarketPlateTableCell()
@property (strong, nonatomic) IBOutletCollection(PlateView) NSArray *plateViewArr;

@end

@implementation MarketPlateTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configUI];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)configUI {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    for (PlateView *view in _plateViewArr) {
        view.isBig = NO;
    }
}
@end
