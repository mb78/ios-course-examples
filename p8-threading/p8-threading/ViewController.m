//
//  ViewController.m
//  p8-threading
//
//  Created by student on 23.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    __weak IBOutlet UILabel *label1;
    NSOperationQueue* queue1;
    NSMutableArray* array1;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    queue1=[[NSOperationQueue alloc] init];
    array1=[[NSMutableArray alloc] init];
    NSBlockOperation* op1=[NSBlockOperation blockOperationWithBlock:^{
        int c=0;
        while (YES) {
            NSLog(@"%d",c);
            NSString* s=[[NSString alloc] initWithFormat:@"counter1:%d",c];
            [self performSelectorOnMainThread:@selector(setLabel:) withObject:s waitUntilDone:YES];
            c++;
            if (c==10) break;
            [NSThread sleepForTimeInterval:1];
            @synchronized(array1) {
                [array1 addObject:s];
            }
        }
    }];
    NSBlockOperation* op2=[NSBlockOperation blockOperationWithBlock:^{
        int c=100;
        while (YES) {
            NSTimeInterval i=0.5;
            [NSThread sleepForTimeInterval:i];
            NSLog(@"%d",c);
            NSString* s=[[NSString alloc] initWithFormat:@"counter2:%d",c];
            //DO NOT USE:label1.text=s;
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                label1.text=s;
            }];
            c++;
            [NSThread sleepForTimeInterval:1];
            @synchronized(array1) {
                [array1 addObject:s];
            }
        }
    }];
//    [op2 addDependency:op1];
    [queue1 addOperation:op1];
    [queue1 addOperation:op2];
//    op.main=...
}

-(void)setLabel:(NSString*)text {
    label1.text=text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
