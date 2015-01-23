//
//  ViewController.m
//  p10-gestures
//
//  Created by student on 23.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    __weak IBOutlet UILabel *label1;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tgr=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected:)];
    tgr.numberOfTapsRequired=2;
    tgr.numberOfTouchesRequired=1;
    [label1 addGestureRecognizer:tgr];
}

-(void)tapDetected:(UITapGestureRecognizer*)obj {
    NSLog(@"tap %@",obj);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
