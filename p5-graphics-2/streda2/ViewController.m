//
//  ViewController.m
//  streda2
//
//  Created by student on 21.01.15.
//  Copyright (c) 2015 robert. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyView *myview;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UILabel* label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 10, 200, 150);
    label.text = @"Every getter and setter in your code represents a failure to encapsulate and creates unnecessary coupling. A profusion of getters and setters (also referred to as accessors, accessor methods, and properties) is a sign of a poorly-designed set of classes.";
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentJustified;
    label.backgroundColor = [UIColor blueColor];
    label.font = [UIFont fontWithName:@"Helvetica" size: 10];
    label.numberOfLines = 0;
    CGSize size = [label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(label.frame.size.width, CGFLOAT_MAX)];
    CGRect frame = label.frame;
    frame.size = size;
    label.frame = frame;
    [self.view addSubview:label];
    UIImage* bird = [UIImage imageNamed:@"birds.jpg"];
    CGRect ir = CGRectMake(50, 50, 150, 150);
    UIImageView* iv = [[UIImageView alloc] initWithFrame: ir];
    [iv setImage:bird];
    [self.view addSubview:iv];
    //self.myview.text = @"Nazdar";
    [UIView animateWithDuration:3 animations:^{
        iv.center = _myview.center;
        label.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(M_PI), CGAffineTransformMakeScale(1, 0.5));
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
