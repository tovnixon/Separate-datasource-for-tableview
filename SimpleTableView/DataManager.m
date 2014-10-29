//
//  DataManager.m
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import "DataManager.h"
#import "TrippleDeclaration.h"
@interface DataManager()
@property (nonatomic, strong) NSArray * trippleObjects;
@end

@implementation DataManager

+ (instancetype)defaultManager {
    static DataManager * manager = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        manager = [DataManager new];
    });
    return manager;
}


- (NSArray *)getObjects {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    NSError * error = nil;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:kNilOptions error:&error];
    
    if (error) {
        NSLog(@"can't read data from %@, error %@", filePath, error.description);
        return nil;
    }
    NSMutableArray * data = [NSMutableArray array];
    NSArray * arrayJson = [json objectForKey:@"data"];
    if (arrayJson) {
        for (NSDictionary * dict in arrayJson) {
            TrippleDeclaration * td = [TrippleDeclaration declarationWithDictionary:dict];
            [data addObject:td];
        }
    } else {
        NSLog(@"Warning: data at path %@ is empty", filePath);
    }
    return data;
}


@end
