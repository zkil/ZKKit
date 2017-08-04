//
//  ZKBaseTableViewController.h
//  ZKKit
//
//  Created by pang on 2017/8/3.
//  Copyright © 2017年 zk. All rights reserved.
//

#import "ZKBaseViewController.h"
#import <MJRefresh/MJRefresh.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface ZKBaseTableViewController : ZKBaseViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *data;
@property (nonatomic,strong) UILabel *backgroundLable;
@property (nonatomic,strong) UIImageView *backgroundImageView;

@property (nonatomic) BOOL showRefreshHeader;
@property (nonatomic) BOOL showRefreshFooter;

@property (nonatomic,weak) MJRefreshNormalHeader *refreshHeader;
@property (nonatomic,weak) MJRefreshBackNormalFooter *refreshFooter;


- (void)refreshAction;
- (void)loadMoreAction;
@end
