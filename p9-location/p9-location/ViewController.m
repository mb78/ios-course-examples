//
//  ViewController.m
//  p9-location
//
//  Created by student on 23.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    CLLocationManager* lm;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    lm=[[CLLocationManager alloc] init];
    lm.delegate=self;
    lm.desiredAccuracy=5; // meters
    lm.distanceFilter=5; // default:±0
    [lm startUpdatingLocation];
    lm.headingFilter=5;
    [lm startUpdatingHeading];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {

    NSLog(@"%f %f",newLocation.coordinate.latitude,newLocation.coordinate.longitude);
    
//- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
/*    for (CLLocation* l in locations) {
        NSLog(@"location %@ %@",l,ll);
        if (ll!=nil) {
            NSLog(@"Distance: %f",[l distanceFromLocation:ll]);
            ll=l;
        }
    }*/
}

@end
