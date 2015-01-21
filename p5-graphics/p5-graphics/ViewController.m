//
//  ViewController.m
//  p5-graphics
//
//  Created by student on 21.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UILabel *label1=[[UILabel alloc] init];
    label1.frame=CGRectMake(10,10,200,150);
    label1.text=@"label1";
    label1.backgroundColor=[UIColor blueColor];
    [self.view addSubview:label1];
    label1=[[UILabel alloc] init];
    label1.backgroundColor=[UIColor greenColor];
    label1.frame=CGRectMake(30,30,200,150);
    [self.view addSubview:label1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
