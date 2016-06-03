//
//  Habit.m
//  HabitTracker
//
//  Created by Sarmila on 6/3/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Habit.h"

@implementation Habit

-(instancetype)initWithHabitTypeName:(NSString *)type description:(NSString *)description{
    self = [super init];
    if(self){
        _habitType=type;
        _habitDescription=description;
    }
    return self;
}

@end
