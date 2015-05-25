//
//  ViewController.m
//  MyPickerView
//
//  Created by InstructorShared on 2014-09-26.
//  Copyright (c) 2014 cestarcollege. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property NSArray *moods;

@property (weak, nonatomic) IBOutlet UIPickerView *myMoodPickerView;

@end

@implementation ViewController

- (IBAction)SelectedItem:(id)sender {
    
    // NSInteger row;
    // NSArray *repeatPickerData;
    // UIPickerView *repeatPickerView;
    NSInteger row;
    row = [self.myMoodPickerView selectedRowInComponent:0];
    // self.strPrintRepeat = [repeatPickerData objectAtIndex:row];
    
    NSString *mood = [self.moods objectAtIndex:row];
    NSString *msg;
    
    
    if ([mood  isEqual: @"Poor"]) {
        msg = @"Dont worry ...being poor is okay";
    }
    else if ([mood isEqual: @"Sad"]){
        msg = @"Aww .. dont be sad .. better days ahead";
    }
    else // default
    {
        msg = @"not sure what to say";
    }
    
    // use either index notation of the method objectAtIndex
    NSLog(@"%@", msg);
    // NSLog(@"%@", _moods[row]);
    
    
    
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component

{
    return [self.moods count];
    // return 3;
    
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.moods[row];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.moods = @[@"Poor",@"Sad",@"Happy",@"Fantastic",@"Rich"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
