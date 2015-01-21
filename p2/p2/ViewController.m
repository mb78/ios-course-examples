//
//  ViewController.m
//  p2
//
//  Created by student on 20.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    __weak IBOutlet UIPickerView *valec;
    NSArray* dny;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //dny=[[NSArray alloc] initWithObjects:@"pon",@"uto",@"str",@"stv",@"pia",@"sob",@"ned",nil];
    //dny=@[@"pon",@"uto",@"str",@"stv",@"pia",@"sob",@"ned"];
    //NSString *path=[[NSBundle mainBundle] pathForResource:@"dny" ofType:@"plist"];
    //dny=[[NSArray alloc] initWithContentsOfFile:path];
    
    NSURL* url=[NSURL URLWithString:@"http://hippo.feld.cvut.cz/iphone/dny.plist"];
    dny=[[NSArray alloc] initWithContentsOfURL:url];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component {
    return dny.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component {
    return [dny objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component {
        [pickerView selectRow:abs(component*6-row) inComponent:1-component animated:YES];


}

@end
