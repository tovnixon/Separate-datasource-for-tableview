//
//  TableDataSource.m
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import "TableDataSource.h"
#import "ThreeLabelsTableViewCell.h"

@interface TableDataSource()
@property (nonatomic, strong) NSArray * items;
@property (nonatomic, copy)   NSString * cellIdentifier;
@property (nonatomic, copy)   ConfigureCellBlock configureBlock;

@end

@implementation TableDataSource

- (id)initWithItems:(NSArray *)aItems cellIdentifier:(NSString *)aCellIdentifier configureBlock:(ConfigureCellBlock)aConfigureBlock {
    self = [super init];
    if (self) {
        self.items = aItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureBlock = aConfigureBlock;
    }
    return self;
}

#pragma mark - Data source delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ThreeLabelsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    if (self.configureBlock) {
        id item = [self.items objectAtIndex:indexPath.row];
        self.configureBlock(cell, item);
    }
    return cell;
}
@end
