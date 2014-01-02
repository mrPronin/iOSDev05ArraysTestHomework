//
//  RITAnimal.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAnimal.h"

@implementation RITAnimal

- (void) moved {
    NSLog(@"Animal \"%@\" is moved!", self.nickname);
}

- (NSString*) description {
    return [NSString stringWithFormat:
            @"nickname = %@, is pet = %@",
            _nickname,
            _isPet?@"YES":@"NO"
            ];
}

@end
