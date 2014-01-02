//
//  RITHuman.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 28.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITHuman.h"

@implementation RITHuman

- (void) moved {
    NSLog(@"Human \"%@\" is moved!", self.name);
}

- (NSString*) description {
    return [NSString stringWithFormat:
            @"name = %@, height = %.2f, weight = %.2f, gender = %@",
            _name,
            _height,
            _weight,
            (_gender == RITGenderMale) ? @"Male": @"Female"];
}

@end
