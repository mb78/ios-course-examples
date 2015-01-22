//
//  MainViewController.h
//  p7-storage
//
//  Created by student on 22.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
