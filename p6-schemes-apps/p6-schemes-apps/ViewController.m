//
//  ViewController.m
//  p6-schemes-apps
//
//  Created by student on 22.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking/AFHTTPRequestOperationManager.h"

@interface ViewController () {
    
    __weak IBOutlet UIWebView *browser1;
    __weak IBOutlet UITextField *addr1;
    AFHTTPRequestOperationManager* rom;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//    NSURL* url=[NSURL URLWithString:@"http://www.idnes.cz"];
//    NSURLRequest* req=[NSURLRequest requestWithURL:url];
//    [browser1 loadRequest:req];
    
/*    NSLog(@"Odpoved: ");
    rom=[AFHTTPRequestOperationManager manager];
    rom.requestSerializer=[AFHTTPRequestSerializer serializer];
    rom.responseSerializer=[AFHTTPResponseSerializer serializer];
    [rom GET:@"http://www.root.cz" parameters:@{@"a":@"b"} success:^(AFHTTPRequestOperation* operation,id responseObject) {
        NSLog(@"Odpoved: %@",operation.responseString);
        NSNotificationCenter* nc=[NSNotificationCenter defaultCenter];
        [nc postNotificationName:@"recvd" object:nil userInfo:@{@"info":@"ta"}]; // userinfo=dictionary=data of notification
    }failure:^(AFHTTPRequestOperation *operation,NSError* error) {
    }];
 */
    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
    NSLog(@"name_preference=%@",[ud objectForKey:@"name_preference"]);
    
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

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(error.localizedDescription);
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSNotificationCenter* nc=[NSNotificationCenter defaultCenter];
    [nc postNotificationName:@"recvd" object:nil userInfo:@{@"info":@"web loaded"}]; // userinfo=dictionary=data of notification
    
}

@end
