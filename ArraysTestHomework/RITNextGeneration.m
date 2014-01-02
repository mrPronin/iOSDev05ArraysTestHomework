//
//  RITNextGeneration.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITNextGeneration.h"

@implementation RITNextGeneration

- (void) moved {
    [super moved];
    NSLog(@"Super \"%@\" is moved!", self.name);
}

- (NSString*) description {
    return [NSString stringWithFormat:@"%@, Levitation = %@, Teleportation = %@",
            super.description,
            _isLevitation ? @"YES":@"NO",
            _isTeleportation ? @"YES":@"NO"
            ];
}

@end
