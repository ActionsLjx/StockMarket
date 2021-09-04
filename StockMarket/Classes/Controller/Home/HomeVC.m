//
//  HomeVC.m
//  StockMarket
//
//  Created by ljx on 2021/9/3.
//

#import "HomeVC.h"
#import "HomeHeadView.h"

static NSString *cellID = @"cellID";
@interface HomeVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableview;
@property(nonatomic,strong)HomeHeadView *headView;
@end

@implementation HomeVC

#pragma mark ---- 懒加载
- (HomeHeadView *)headView{
    if(!_headView) {
        _headView = [[HomeHeadView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 135)];
        
    }
    return _headView;
}

- (UITableView *)tableview {
    if (!_tableview) {
        _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
        _tableview.tableHeaderView = self.headView;
        _tableview.tableFooterView = [UIView new];
        _tableview.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
        [_tableview registerNib:[UINib nibWithNibName:@"CompanyTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:cellID];
        [self.view addSubview:_tableview];
    }
    return _tableview;
}


#pragma mark ---- 生命周期

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"自选";
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
}

#pragma mark ---- tableview delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];

    return  cell;
}





@end
