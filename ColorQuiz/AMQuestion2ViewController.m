//
//  AMFirstViewController.m
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import "AMQuestion2ViewController.h"

@interface AMQuestion2ViewController () {
    NSArray *answers;
}

@end

@implementation AMQuestion2ViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    // Include the options for this particular question
    answers = [NSArray arrayWithObjects:
               [[AMAnswer alloc] initFromText:@"Calm, cool and collected"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"blue"]],
               [[AMAnswer alloc] initFromText:@"Outdoorsy"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"green"]],
               [[AMAnswer alloc] initFromText:@"Bright and happy, funny"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"yellow"]],
               [[AMAnswer alloc] initFromText:@"Confident and competitive"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"red"]],
               [[AMAnswer alloc] initFromText:@"Shy and quiet"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"purple"]],
               [[AMAnswer alloc] initFromText:@"Cheerful, high spirits"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"pink"]],
               [[AMAnswer alloc] initFromText:@"Dark and reserved"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"black"]],
               [[AMAnswer alloc] initFromText:@"Artistic and creative"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"orange"]],
               nil];
    
    answers = [answers shuffledArray];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [answers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = ((AMAnswer *)[answers objectAtIndex:indexPath.row]).text;
    // This is what maps the answers array with the cells!
    
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    AMQuestion3ViewController *rvc = [segue destinationViewController];
    
    // Pass the selected object to the new view controller.
    int index = self.tableView.indexPathForSelectedRow.row;
    rvc.currentColor = [self.currentColor addColor: ((AMAnswer*) [answers objectAtIndex:index]).color];
    NSLog(@"%@", rvc.currentColor);
}

@end
