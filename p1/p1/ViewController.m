//
//  ViewController.m
//  p1
//
//  Created by student on 19.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    __weak IBOutlet UILabel *label1;
    __weak IBOutlet UIButton *button1;
    NSMutableString* s;
    __weak IBOutlet UISwitch *switch1;
    __weak IBOutlet UITextField *text1;
}
@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    label1.text=@"aaa   dddd";
    [label1 setText:@"11111"];
    s=@"aaasss".mutableCopy;
    [text1 becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)stisk:(id)sender {
    label1.text=@"aaaaaasss";
}

- (IBAction)prepinacPrepnut:(UISwitch *)sender {
//    if (sender.on) label1.text=@"on"; else
        label1.text=sender.on ? @"off" : @"ON";
    
    //label1.hidden=!switch1.on;
}

- (IBAction)zmenatextu1:(UITextField *)sender {
    //label1.text=sender.text;
}

- (IBAction)stiskEnterText1:(UITextField *)sender {
    label1.text=sender.text;
}
- (IBAction)stiskPozadi:(UIControl *)sender {
    [text1 resignFirstResponder];
}



@end
