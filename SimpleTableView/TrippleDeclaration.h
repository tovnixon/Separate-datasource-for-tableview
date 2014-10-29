//
//  TrippleDeclaration.h
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrippleDeclaration : NSObject


@property (nonatomic, copy, readonly) NSString * strOne;
@property (nonatomic, copy, readonly) NSString * strTwo;
@property (nonatomic, copy, readonly) NSString * strThree;

+ (instancetype)declarationWithDictionary:(NSDictionary *)dictionary;
@end
