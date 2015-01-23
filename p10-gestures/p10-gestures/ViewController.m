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
    IBOutlet UIPanGestureRecognizer *pangr1;
    CGPoint begin;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tgr=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected:)];
    tgr.numberOfTapsRequired=1;
    tgr.numberOfTouchesRequired=1;
    [label1 addGestureRecognizer:tgr];

}

-(void)tapDetected:(UITapGestureRecognizer*)obj {
    NSLog(@"tap %@",obj);
    
}
- (IBAction)panDetected:(UIPanGestureRecognizer*)sender {
    NSLog(@"pan %d",sender.state);
    if (sender.state==UIGestureRecognizerStateBegan) {
        begin=[sender locationInView:self.view];
        begin.x-=label1.center.x;
        begin.y-=label1.center.y;
        NSLog(@"pan began");
    }
    if (sender.state==UIGestureRecognizerStateEnded)
        NSLog(@"pan ended");
    if (sender.state==UIGestureRecognizerStateChanged) {
        CGPoint pos=[sender locationInView:self.view];
        CGPoint c=label1.center;
        c.x=pos.x-begin.x;
        c.y=pos.y-begin.y;
        label1.center=c;
        NSLog(@"pos %f,%f",pos.x,pos.y);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
