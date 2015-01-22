//
//  ViewController.m
//  p6-schemes-apps
//
//  Created by student on 22.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    __weak IBOutlet UIWebView *browser1;
    __weak IBOutlet UITextField *addr1;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL* url=[NSURL URLWithString:@"http://www.idnes.cz"];
    NSURLRequest* req=[NSURLRequest requestWithURL:url];
    [browser1 loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)urlchanged:(id)sender {
    NSURL* url=[NSURL URLWithString:addr1.text];
    NSURLRequest* req=[NSURLRequest requestWithURL:url];
    [browser1 loadRequest:req];
}

- (void)webView:(UIWebView *)webView
didFailLoadWithError:(NSError *)error {
    NSLog(error.localizedDescription);
}

@end
