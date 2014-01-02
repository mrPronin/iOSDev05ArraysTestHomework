//
//  RITAnimal.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RITAnimal : NSObject

@property (strong, nonatomic) NSString* nickname;
@property (assign, nonatomic) BOOL isPet;

- (void) moved;

@end
