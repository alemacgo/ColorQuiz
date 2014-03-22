//
//  AMColor.m
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import "AMColor.h"

@implementation AMColor

-(NSString *)description{
    // this is the __string__ method in python
    return [NSString stringWithFormat:@"blue: %f\n", self.blue];
}

@end
