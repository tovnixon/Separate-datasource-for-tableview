//
//  DataManager.h
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

+ (instancetype)defaultManager;
- (NSArray *)getObjects;
@end
