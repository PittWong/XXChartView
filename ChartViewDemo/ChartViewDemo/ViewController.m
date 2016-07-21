//
//  ViewController.m
//  ChartViewDemo
//
//  Created by 王旭 on 16/7/21.
//  Copyright © 2016年 Pitt. All rights reserved.
//

#import "ViewController.h"
#import "XXLineChartView.h"
#import "XXColumnChartView.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic ,weak) UITableView *tableView;
@property (nonatomic ,strong) NSArray *chartNames;
@property (nonatomic ,weak) XXLineChartView *lineChartView;
@property (nonatomic ,weak) XXColumnChartView *columnChartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.chartNames = @[@"折线统计图",@"柱状统计图"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.frame = CGRectInset(self.view.bounds, 0, 100);
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.lineChartView removeFromSuperview];
    [self.columnChartView removeFromSuperview];
    NSArray * values = @[@5.6,@7.8,@6,@8.5,@3,@7,@8.8];
    NSArray * xTittles = @[@"标题1",@"标题2",@"标题3",@"标题4",@"标题5",@"标题6",@"标题7"];
    NSInteger yTittleCount = 4;
    if (indexPath.row == 0) {
        XXLineChartView *chartView = [[XXLineChartView alloc]initWithValues:values xTittles:xTittles yTittleCount:yTittleCount];
        self.lineChartView = chartView;
        chartView.frame = CGRectInset(self.view.bounds, 0, 200);
        [self.view addSubview:chartView];
    }else if (indexPath.row == 1) {
        XXColumnChartView *chartView = [[XXColumnChartView alloc]initWithValues:values xTittles:xTittles yTittleCount:yTittleCount];
        self.columnChartView = chartView;
        chartView.frame = CGRectInset(self.view.bounds, 0, 200);
        [self.view addSubview:chartView];
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chartNames.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.chartNames[indexPath.row];
    return cell;
}
- (UITableView *)tableView {
    if (_tableView == nil) {
        UITableView *tableView = [[UITableView alloc]init];
        _tableView = tableView;
        [self.view addSubview:tableView];
    }
    return _tableView;
}

@end
