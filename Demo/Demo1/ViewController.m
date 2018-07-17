//
//  ViewController.m
//  Demo1
//
//  Created by xyt on 2018/7/16.
//  Copyright © 2018年 xyt. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "PhotoCell.h"
#import "XiaoMing.h"

@interface ViewController ()<UITableViewDelegate>
@property (strong, nonatomic)  id photosArrayDataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //控制器中代码
    
    //对DataSource的抽离
    NSString * PhotoCellIdentifier=@"PhotoCellIdentifier";
    TableViewCellConfigureBlock configureCell = ^(PhotoCell *cell, NSString *photo) {
//        [cell configureForPhoto:photo];
        
        [self.tableview indexPathForCell:cell];
    };
    NSArray *photos = @[@"aa",@"bb",@"cc",@"dd"];
    self.photosArrayDataSource =[[ArrayDataSource alloc] initWithItems:photos cellIdentifier:PhotoCellIdentifier configureCellBlock:configureCell];
    self.tableview.dataSource = self.photosArrayDataSource;
    self.tableview.delegate=self;
//    [self.tableView registerNib:[PhotoCell nib] forCellReuseIdentifier:PhotoCellIdentifier];
    
    
    
    //策略模式
    XiaoMing *xm = [[XiaoMing alloc]init];
    //各种情况直接赋值给dayStr即可。
    NSString *dayStr = @"day3";
    [xm doSomethingWithDayStr:dayStr params:@{@"key":@"test"}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"aaaa");
    
}


@end
