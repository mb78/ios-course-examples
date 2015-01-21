//
//  ViewController.m
//  p3
//
//  Created by student on 20.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "ViewController2.h"

@interface ViewController () {
    
    __weak IBOutlet UITableView *table1;
    NSArray* dny;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
dny=@[@"pon",@"uto",@"str",@"stv",@"pia",@"sob",@"ned"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 10;
}


- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [dny count];
}


// nsindexpath=sekcia+riadok
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    int section=indexPath.section;
    int row=indexPath.row;
    MyTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"mycell"];
// zakladny typ treba vytvorit kvoli tomu, ze id je neznamy...
//             if (!cell) {
//        cell=[[MyUITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"mycell"];
 //       NSLog(@"section %d row %d\n",section,row);
   // }
    cell.label1.text=[dny objectAtIndex:row];
    cell.detailTextLabel.text=@"poznamka";
    cell.accessoryType=UITableViewCellAccessoryDetailButton;
    return cell;
}


- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section {
    return @"1111";
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    int section=indexPath.section;
    int row=indexPath.row;
    NSLog(@"SELECT ROW section %d row %d\n",section,row);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    NSLog(@"prechod %s",segue.identifier.);
    if ([segue.identifier isEqualToString:@"prechod1"]) {
        ViewController2 *vc2=segue.destinationViewController;
        NSIndexPath* indexPath=[table1 indexPathForSelectedRow];
        int section=indexPath.section;
        int row=indexPath.row;
NSLog(@"transition ROW section %d row %d\n",section,row);
    }
    //table1.hidden=YES;
}

-(IBAction)cestaSpat:(UIStoryboardSegue*)segue {
    
}

@end
