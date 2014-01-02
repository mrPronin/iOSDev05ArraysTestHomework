//
//  RITHuman.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 28.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    RITGenderMale,
    RITGenderFemale
} RITGender;

@interface RITHuman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) RITGender gender;

- (void) moved;

@end
