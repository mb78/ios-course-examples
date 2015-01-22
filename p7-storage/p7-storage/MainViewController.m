//
//  MainViewController.m
//  p7-storage
//
//  Created by student on 22.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "MainViewController.h"
#import "Mesto.h"
#import "Clovek.h"
#import "AppDelegate.h"

@interface MainViewController () {
    NSManagedObjectContext *context;
}

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    AppDelegate* delegate=[UIApplication sharedApplication].delegate;
    context=delegate.managedObjectContext;
    Mesto* brno1=[NSEntityDescription insertNewObjectForEntityForName:@"Mesto" inManagedObjectContext:context];
    brno1.meno=@"Brno";
    Clovek* clovek1=[NSEntityDescription insertNewObjectForEntityForName:@"Clovek" inManagedObjectContext:context];
    clovek1.meno=@"frantapepa1";
    clovek1.vek=@20;
    clovek1.bydlisko=brno1.meno;
    NSError *error=nil;
    [context save:&error];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
