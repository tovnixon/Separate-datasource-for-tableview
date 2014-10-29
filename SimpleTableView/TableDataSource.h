//
//  TableDataSource.h
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UITableViewController.h>

typedef void (^ConfigureCellBlock)(id cell, id object);
@interface TableDataSource : NSObject <UITableViewDataSource>

- (id)initWithItems:(NSArray *)aItems cellIdentifier:(NSString *)aCellIdentifier configureBlock:(ConfigureCellBlock)aConfigureBlock;


@end
