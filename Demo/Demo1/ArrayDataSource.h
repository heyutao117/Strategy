//
//  ArrayDataSource.h
//  Demo1
//
//  Created by xyt on 2018/7/16.
//  Copyright © 2018年 xyt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//抽离的数据源代码
//.h文件
typedef void (^TableViewCellConfigureBlock)(id cell, id item);
@interface ArrayDataSource : NSObject <UITableViewDataSource>
- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
@end
