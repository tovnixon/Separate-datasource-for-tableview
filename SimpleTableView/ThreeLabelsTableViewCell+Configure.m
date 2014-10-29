//
//  ShapeTableViewCell+Data.m
//  SimpleTableView
//
//  Created by Nikita Levintsov on 10/28/14.
//  Copyright (c) 2014 Nikita Levintsov. All rights reserved.
//

#import "ThreeLabelsTableViewCell+Configure.h"
#import "TrippleDeclaration.h"

@implementation ThreeLabelsTableViewCell (Configure)

- (void)configureForeDeclaration:(TrippleDeclaration *)declaration {
    self.lblOne.text = declaration.strOne;
    self.lblTwo.text = declaration.strTwo;
    self.lblThree.text = declaration.strThree;
}
@end
