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

- (IBAction)startOver:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

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
    NSArray* result = [self.currentColor getDominantColor];

    AMColorView* colorView = [[AMColorView alloc] initWithFrame:CGRectMake(0,0,196,196) withColor:[result objectAtIndex:0]];
    
    NSString* colorName = [result objectAtIndex:1];
    
    // Alter color name label
    ((UILabel*) [self.view.subviews firstObject]).text = colorName;
    
    NSString *phrase = [NSString stringWithFormat:@"You are a %@ person.",
                        [result objectAtIndex:2]];
    ((UILabel*) [self.view.subviews objectAtIndex:1]).text = phrase;
    
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
