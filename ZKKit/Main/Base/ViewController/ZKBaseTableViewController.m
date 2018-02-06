//
//  ZKBaseTableViewController.m
//  ZKKit
//
//  Created by pang on 2017/8/3.
//  Copyright © 2017年 zk. All rights reserved.
//

#import "ZKBaseTableViewController.h"

@interface ZKBaseTableViewController ()

@end

@implementation ZKBaseTableViewController

@synthesize refreshHeader = _refreshHeader, refreshFooter = _refreshFooter;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
}

#pragma -mark- init

- (void)initUI {
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.tableFooterView = [UIView new];
    _tableView.separatorInset = UIEdgeInsetsZero;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
    
    //table 剛初始化完成，設置上下拉刷新
    self.showRefreshHeader = self.showRefreshHeader;
    self.showRefreshFooter = self.showRefreshFooter;
}


#pragma -mark- action
- (void)refreshAction {
    
}

- (void)loadMoreAction {
    
}

#pragma -mark- setter
- (void)setShowRefreshHeader:(BOOL)showRefreshHeader {
    _showRefreshHeader = showRefreshHeader;
    if (showRefreshHeader) {
        self.tableView.mj_header = self.refreshHeader;
    } else {
        self.tableView.mj_header = nil;
    }
}

- (void)setShowRefreshFooter:(BOOL)showRefreshFooter {
    _showRefreshFooter = showRefreshFooter;
    if (showRefreshFooter) {
        self.tableView.mj_footer = self.refreshFooter;
    } else {
        self.tableView.mj_footer = nil;
    }
}

#pragma -mark- getter

- (MJRefreshNormalHeader *)refreshHeader {
    if (_refreshHeader == nil) {
        MJRefreshNormalHeader *refreshHeader = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshAction)];
        refreshHeader.lastUpdatedTimeLabel.hidden = YES;
        _refreshHeader = refreshHeader;
    }
    return _refreshHeader;
}

- (MJRefreshBackNormalFooter *)refreshFooter {
    if (_refreshFooter == nil) {
        MJRefreshBackNormalFooter *refreshFooter = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreAction)];
        _refreshFooter = refreshFooter;
    }
    return _refreshFooter;
}

- (void)setRefreshHeader:(MJRefreshNormalHeader *)refreshHeader {
    _refreshHeader = refreshHeader;
    if (self.showRefreshHeader) {
        self.tableView.mj_header = refreshHeader;
    }
    
}

- (void)setRefreshFooter:(MJRefreshBackNormalFooter *)refreshFooter {
    _refreshFooter = refreshFooter;
    if (self.showRefreshFooter) {
        self.tableView.mj_footer = refreshFooter;
    }
}

- (UILabel *)backgroundLable {
    if (_backgroundLable == nil) {
        _backgroundLable = [[UILabel alloc] initWithFrame:self.view.frame];
        _backgroundLable.textColor = RGB(51, 51, 51);
        _backgroundLable.font = [UIFont systemFontOfSize:20];
        _backgroundLable.textAlignment = NSTextAlignmentCenter;
        _backgroundLable.hidden = YES;
        [self.view addSubview:_backgroundLable];
        
        [_backgroundLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsZero);
        }];
    }
    [self.view bringSubviewToFront:_backgroundLable];
    return _backgroundLable;
}

- (UIImageView *)backgroundImageView {
    if (_backgroundImageView == nil) {
        _backgroundImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
        _backgroundImageView.hidden = YES;
        [self.view addSubview:_backgroundImageView];
    }
    [self.view bringSubviewToFront:_backgroundImageView];
    return _backgroundImageView;
}

#pragma -mark- UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
