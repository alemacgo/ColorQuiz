//
//  AMColorView.h
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AMColorView : UIView

@property UIColor* fillColor;

-(id)initWithFrame:(CGRect) frame withColor:(UIColor*) fillColor;

@end
