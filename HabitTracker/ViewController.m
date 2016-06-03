//
//  ViewController.m
//  HabitTracker
//
//  Created by Sarmila on 6/3/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *habitOptionTableView;

@end

NSMutableArray *habitArray;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Habit *habit =[[Habit alloc]initWithHabitTypeName:@"Run" description:@"Run for at lease 2 miles"];
    
    Habit *habit2 =[[Habit alloc]initWithHabitTypeName:@"Code" description:@"Spent 2 hours in iOS coding"];
    
    Habit *habit3 =[[Habit alloc]initWithHabitTypeName:@"Meditate" description:@"Meditate 2 hours for peace of mind"];
    
    habitArray = [[NSMutableArray alloc]initWithObjects:habit, habit2, habit3, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return habitArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Habit *habit = [habitArray objectAtIndex:indexPath.row];
    cell.textLabel.text=habit.habitType;
    return cell;
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"detailViewControllerSegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"detailViewControllerSegue"])
    {
        NSIndexPath *indexPath = [self.habitOptionTableView indexPathForSelectedRow];
        
//         Get reference to the destination view controller
        detailHabitViewController *vc = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        
       
       vc.habit = habitArray[indexPath.row];
    
        
    }
}

@end
