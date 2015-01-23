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
    clovek1.vek=20;
//    clovek1.bydlisko=brno1;
    NSError *error=nil;
    [context save:&error];
    
    NSLog(@"data set");
    NSFetchRequest *req=[[NSFetchRequest alloc] initWithEntityName:@"Clovek" ];
    req.predicate=[NSPredicate predicateWithFormat:@"vek>15"]; // similar to sql
    NSSortDescriptor* sd1=[NSSortDescriptor sortDescriptorWithKey:@"meno" ascending:YES];
    NSSortDescriptor* sd2=[NSSortDescriptor sortDescriptorWithKey:@"vek" ascending:NO];
    req.sortDescriptors=@[sd1,sd2];
    NSArray *people=[context executeFetchRequest:req error:&error];
    for (Clovek* clovek in people) {
        NSLog(@"meno=%@, vek=%d",clovek.meno,clovek.vek);
    }
    [context deleteObject:clovek1];
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
