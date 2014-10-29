//
//  TrippleDeclaration.m
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import "TrippleDeclaration.h"

@interface TrippleDeclaration()
@property (nonatomic, copy) NSString * strOne;
@property (nonatomic, copy) NSString * strTwo;
@property (nonatomic, copy) NSString * strThree;
@end

@implementation TrippleDeclaration

- (id)init {
    self = [super init];
    if (self) {
        self.strOne = [NSString new];
        self.strTwo = [NSString new];
        self.strThree = [NSString new];
    }
    return self;
}

+ (instancetype)declarationWithDictionary:(NSDictionary *)dictionary {
    TrippleDeclaration * declaration = [TrippleDeclaration new];
    declaration.strThree = [dictionary valueForKey:@"word3"];
    declaration.strTwo   = [dictionary valueForKey:@"word2"];
    declaration.strOne   = [dictionary valueForKey:@"word1"];
    return declaration;
}

@end
