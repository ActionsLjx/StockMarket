//
//  StockDetailTableCell.m
//  StockMarket
//
//  Created by ljx on 2021/9/6.
//

#import "StockDetailTableCell.h"

@implementation StockDetailTableCell

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
}
@end
