//
//  ViewController.m
//  SNChartView
//
//  Created by wangsen on 15/12/25.
//  Copyright © 2015年 wangsen. All rights reserved.
//

#import "ViewController.h"
#import "SNChart.h"
@interface ViewController () <SNChartDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SNChart * chart = [[SNChart alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height - 100) withDataSource:self andChatStyle:SNChartStyleLine];
    
//    SNChart * chart = [[SNChart alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height - 100) withDataSource:self andChatStyle:SNChartStyleLine];
    chart.curve = YES;//曲线 折线开关
    chart.shadow = YES;//阴影 折线开关
    [chart showInView:self.view];
}

- (NSArray *)chatConfigYValue:(SNChart *)chart {
    return @[@"7.56",@"7.56",@"7.54",@"7.56",@"7.56",@"7.57",@"7.56",@"7.56"];
    return @[@"0.1",@"0.5",@"0.70",@"0.30",@"0.50",@"0.014",@"0",@"0.14"];
        return @[@"0"];
}

- (NSArray *)chatConfigXValue:(SNChart *)chart {
    return @[@"12-1",@"12-2",@"12-3",@"12-4",@"12-5",@"12-6",@"12-7",@"12-8",@"12-9",@"12-10"];
}



@end
