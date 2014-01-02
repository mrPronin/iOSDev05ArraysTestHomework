//
//  RITAppDelegate.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 28.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITHuman.h"
#import "RITWheelman.h"
#import "RITSwimmer.h"
#import "RITRunner.h"
#import "RITNextGeneration.h"
#import "RITDog.h"
#import "RITHorse.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSLog(@"***Pupil Level***");
    NSLog(@"------------------------------------------------------------");
#pragma mark - Pupil Level
    
    RITHuman*           human       = [[RITHuman alloc] init];
    RITWheelman*        wheelman    = [[RITWheelman alloc] init];
    RITSwimmer*         swimmer     = [[RITSwimmer alloc] init];
    RITRunner*          runner      = [[RITRunner alloc] init];
    
    human.name      = @"Human 01";
    wheelman.name   = @"Wheelman 01";
    swimmer.name    = @"Swimmer 01";
    runner.name     = @"Runner 01";
    
    human.height        = 1.7f;
    wheelman.height     = 1.85f;
    swimmer.height      = 1.9f;
    runner.height       = 1.95f;
    
    human.weight        = 55.f;
    wheelman.weight     = 60.f;
    swimmer.weight      = 62.f;
    runner.weight       = 64.f;
    
    human.gender        = RITGenderMale;
    wheelman.gender     = RITGenderMale;
    swimmer.gender      = RITGenderFemale;
    runner.gender       = RITGenderFemale;
    
    NSArray*        array = @[human, wheelman, swimmer, runner];
    
    for (RITHuman* human in array) {
        NSLog(@"Index: %d", [array indexOfObject:human]);
        NSLog(@"%@", human);
        [human moved];
        NSLog(@"\n");
        
    }
    
    NSLog(@"***Student Level***");
    NSLog(@"------------------------------------------------------------");
#pragma mark - Student Level
    
    RITNextGeneration*  superman    = [[RITNextGeneration alloc] init];
    
    superman.name   = @"Super man 01";
    
    superman.height     = 2.10f;
    
    superman.weight     = 89.f;
    
    superman.gender     = RITGenderMale;
    
    superman.isLevitation = YES;
    
    array = @[human, wheelman, swimmer, superman, runner];
    
    for (int i = [array count] - 1; i>=0; i--) {
        NSLog(@"Index: %d", i);
        RITHuman* obj = [array objectAtIndex:i];
        NSLog(@"%@", obj);
        [obj moved];
        NSLog(@"\n");
    }
    
    NSLog(@"***Master Level***");
    NSLog(@"------------------------------------------------------------");
#pragma mark - Master Level
    
    RITDog             *dog         = [[RITDog alloc] init];
    RITHorse           *horse       = [[RITHorse alloc] init];
    
    dog.nickname    = @"Dog's 01";
    horse.nickname  = @"Horse 01";
    
    dog.isPet = YES;
    horse.isPet = NO;
    
    array = @[human, dog, wheelman, swimmer, superman, runner, horse];
    
    for (int i = 0; i < [array count]; i++) {
        
        NSObject* obj = [array objectAtIndex:i];
        
        NSLog(@"Index = %d", i);
        
        id creature = nil;
        
        if ([obj isKindOfClass:[RITHuman class]]) {
            
            NSLog(@"Type = Human");
            
            creature = (RITHuman*)obj;
            
        } else if ([obj isKindOfClass:[RITAnimal class]]) {
            
            NSLog(@"Type = Animal");
            
            creature = (RITAnimal*)obj;
            
        }
        NSLog(@"%@", creature);
        [creature moved];
        NSLog(@"\n");
    }
    
    NSLog(@"***Star Level***");
    NSLog(@"------------------------------------------------------------");
#pragma mark - Star Level
    
    NSArray*    humans      = @[human, wheelman, swimmer, superman, runner];
    NSArray*    animals     = @[dog, horse];
    
    int humanCount = [humans count];
    int animalCount = [animals count];
    
    int maxCount = MAX(humanCount, animalCount);
    
    for (int i = 0; i < maxCount; i++) {
        NSLog(@"Index = %d", i);
        
        if (i < humanCount) {
            RITHuman *creature = [humans objectAtIndex:i];
            NSLog(@"%@", creature);
        }
        
        if (i < animalCount) {
            RITAnimal *creature = [animals objectAtIndex:i];
            NSLog(@"%@", creature);
        }
        
        NSLog(@"\n");
        
    }
    
    NSLog(@"***Superman Level***");
    NSLog(@"------------------------------------------------------------");
#pragma mark - Superman Level
    
    NSMutableArray *unsortedCreatures = [NSMutableArray array];
    
    [unsortedCreatures addObjectsFromArray:humans];
    
    [unsortedCreatures addObjectsFromArray:animals];
    
    NSLog(@"%@", unsortedCreatures);
    
    NSArray *sortedCreatures = [unsortedCreatures sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        if ([obj1 isKindOfClass:[RITHuman class]] && [obj2 isKindOfClass:[RITHuman class]]) {
            
            return [[(RITHuman*)obj1 name] compare:[(RITHuman*)obj2 name]];
            
        } else if ([obj1 isKindOfClass:[RITAnimal class]] && [obj2 isKindOfClass:[RITAnimal class]]) {
            
            return [[(RITAnimal*)obj1 nickname] compare:[(RITAnimal*)obj2 nickname]];
            
        } else if ([obj1 isKindOfClass:[RITAnimal class]]) {
            
            return NSOrderedAscending;
            
        } else {
            
            return NSOrderedDescending;
        }
    }];
    
    NSLog(@"%@", sortedCreatures);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
