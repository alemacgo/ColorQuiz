//
//  AMFirstViewController.h
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AMColor.h"
#import "AMAnswer.h"

@interface AMQuestionViewController : UITableViewController

@property AMColor* currentColor;
@property NSArray* answers;

@end
