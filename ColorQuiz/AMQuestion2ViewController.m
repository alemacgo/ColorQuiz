//
//  AMQuestion2ViewController.m
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import "AMQuestion2ViewController.h"

@interface AMQuestion2ViewController ()

@end

@implementation AMQuestion2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.answers = [NSArray arrayWithObjects:
               [[AMAnswer alloc] initFromText:@"Swimming, relaxing"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"blue"]],
               [[AMAnswer alloc] initFromText:@"Being outside"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"green"]],
               [[AMAnswer alloc] initFromText:@"Talking, partying"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"yellow"]],
               [[AMAnswer alloc] initFromText:@"Playing sports"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"red"]],
               [[AMAnswer alloc] initFromText:@"Reading, playing video games"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"purple"]],
               [[AMAnswer alloc] initFromText:@"Shopping, dressing up"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"pink"]],
               [[AMAnswer alloc] initFromText:@"Being alone, thinking"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"black"]],
               [[AMAnswer alloc] initFromText:@"Drawing, painting, singing"
                                    withColor:[[AMColor alloc]
                                               initFromColorName:@"orange"]],
               nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
