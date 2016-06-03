//
//  detailHabitViewController.h
//  HabitTracker
//
//  Created by Sarmila on 6/3/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Habit.h"
@interface detailHabitViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *showDetalLabel;
@property (strong, nonatomic) Habit *habit;
@end
