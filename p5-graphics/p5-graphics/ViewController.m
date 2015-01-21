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
/*    UILabel *label1=[[UILabel alloc] init];
    label1.frame=CGRectMake(10,10,200,150);
    label1.text=@"label1";
    label1.backgroundColor=[UIColor blueColor];
    [self.view addSubview:label1];
    
    UILabel* label2=[[UILabel alloc] init];
    label2.text=@"12345";
    label2.backgroundColor=[UIColor greenColor];
    label2.frame=CGRectMake(30,30,200,150);
    CGSize nr=[label1.text sizeWithFont:label1.font constrainedToSize:CGSizeMake(label1.frame.size.width,CGFLOAT_MAX)];
    CGRect f=label2.frame;
    f.size=nr;
    label2.frame=f;
    [label1 addSubview:label2];*/
    
    UIImage* img=[UIImage imageNamed:@"icon-200x200.png"];
    UIImageView* imgView=[[UIImageView alloc] initWithFrame:CGRectMake(30,50,img.size.width,img.size.height)];
    imgView.image=img;
    [self.view addSubview:imgView];
    NSLog(@"load ",img.description);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
