//
//  AMResultViewController.m
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import "AMResultViewController.h"

@interface AMResultViewController ()

@end

@implementation AMResultViewController

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
    // Compute the color

    AMColorView* colorView = [[AMColorView alloc] initWithFrame:CGRectMake(0,0,196,196) withColor:[UIColor blueColor]];
    
    NSString* colorName;
    colorName = @"Yellow";
    
    // Alter label
    if ([self.view.subviews count] >= 1)
        ((UILabel*) [self.view.subviews objectAtIndex:1]).text = colorName;
    
    colorView.backgroundColor = [UIColor clearColor];
    colorView.center = self.view.center;
    [self.view addSubview:colorView];
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
