//
//  MarketVC.m
//  StockMarket
//
//  Created by ljx on 2021/9/3.
//

#import "MarketVC.h"
#import "MarketSectionOneView.h"
#import "StockDetailTableCell.h"
#import "MarketPlateTableCell.h"
static NSString *marketCellID = @"marketCellid";
static NSString *marketPlateCellID = @"marketPlateCellID";
@interface MarketVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)MarketSectionOneView *sectionOneView;
@property(nonatomic,strong)UITableView *tableview;
@end

@implementation MarketVC

#pragma mark ---- 懒加载
- (UITableView *)tableview {
    if (!_tableview) {
        _tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
        [_tableview registerNib:[UINib nibWithNibName:@"StockDetailTableCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:marketCellID];
        [_tableview registerNib:[UINib nibWithNibName:@"MarketPlateTableCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:marketPlateCellID];
        _tableview.tableFooterView = [UIView new];
        _tableview.backgroundColor = [UIColor blackColor];
        [self.view addSubview:_tableview];
    }
    return _tableview;
}

- (MarketSectionOneView *)sectionOneView {
    if (!_sectionOneView) {
        _sectionOneView = [[MarketSectionOneView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 36)];
        
    }
    return _sectionOneView;
}

#pragma mark ---- 生命周期

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"行情";
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
}

#pragma mark ---- tableview delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    else if (section == 1) {
        return 2;
    }
    else {
        return 0;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return self.sectionOneView;
    }
    return [UIView new];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 2){
        StockDetailTableCell *cell = [tableView dequeueReusableCellWithIdentifier:marketCellID];
        return cell;
    }
    MarketPlateTableCell *cell = [tableView dequeueReusableCellWithIdentifier:marketPlateCellID];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 2){
        return 50;
    }
    return 110;
}



@end
