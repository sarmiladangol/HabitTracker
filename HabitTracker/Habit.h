//
//  Habit.h
//  HabitTracker
//
//  Created by Sarmila on 6/3/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

//Created a Habit class which hold all type of habit like RUN, CODE,MEDITATEit
//Declare method called initWithHabitTypeName 

#import <Foundation/Foundation.h>

@interface Habit : NSObject
@property (strong, nonatomic)NSString *habitType;
@property (strong, nonatomic)NSString *habitDescription;

-(instancetype)initWithHabitTypeName:(NSString *)type description:(NSString *)description;
@end
