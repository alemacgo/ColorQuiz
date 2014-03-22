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
    return [NSString stringWithFormat:@"%d,%d,%d,%d,%d,%d,%d,%d\n", self.blue, self.green, self.yellow, self.red, self.purple, self.pink, self.black, self.orange];
}

-(id)init {
    return [self initFromString:@"0,0,0,0,0,0,0,0"];
}

-(id)initFromString:(NSString*) string {
    self = [super init];
    if (self) {
        NSArray *components = [string componentsSeparatedByString: @","];
        self.blue = [[components objectAtIndex:0] intValue];
        self.green = [[components objectAtIndex:1] intValue];
        self.yellow = [[components objectAtIndex:2] intValue];
        self.red = [[components objectAtIndex:3] intValue];
        self.purple = [[components objectAtIndex:4] intValue];
        self.pink = [[components objectAtIndex:5] intValue];
        self.black = [[components objectAtIndex:6] intValue];
        self.orange = [[components objectAtIndex:7] intValue];
        NSLog(@"%@\n",[components objectAtIndex:0]);
    }
    return self;
}

-(id)initFromColorName:(NSString*) colorName {
    if ([colorName isEqualToString:@"blue"]) {
        return [self initFromString:@"1,0,0,0,0,0,0,0"];
    }
    if ([colorName isEqualToString:@"green"]) {
        return [self initFromString:@"0,1,0,0,0,0,0,0"];
    }
    if ([colorName isEqualToString:@"yellow"]) {
        return [self initFromString:@"0,0,1,0,0,0,0,0"];
    }
    if ([colorName isEqualToString:@"red"]) {
        return [self initFromString:@"0,0,0,1,0,0,0,0"];
    }
    if ([colorName isEqualToString:@"purple"]) {
        return [self initFromString:@"0,0,0,0,1,0,0,0"];
    }
    if ([colorName isEqualToString:@"pink"]) {
        return [self initFromString:@"0,0,0,0,0,1,0,0"];
    }
    if ([colorName isEqualToString:@"black"]) {
        return [self initFromString:@"0,0,0,0,0,0,1,0"];
    }
    if ([colorName isEqualToString:@"orange"]) {
        return [self initFromString:@"0,0,0,0,0,0,0,1"];
    }
    NSLog(@"Careful: unknown color");
    return [self init];
}

-(AMColor*)addColor:(AMColor*) otherColor {
    self.blue += otherColor.blue;
    self.green += otherColor.green;
    self.yellow += otherColor.yellow;
    self.red += otherColor.red;
    self.purple += otherColor.purple;
    self.pink += otherColor.pink;
    self.black += otherColor.black;
    self.orange += otherColor.orange;
    return self;
}

@end
