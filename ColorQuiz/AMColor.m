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

+(UIColor *)pinkColor{
    return [UIColor colorWithRed:1.0f green:0.4f blue:1.0f alpha:1.0f];
}

-(AMColor*)addColor:(AMColor*) otherColor {
    AMColor* c = [[AMColor alloc] init];
    c.blue = self.blue + otherColor.blue;
    c.green = self.green + otherColor.green;
    c.yellow = self.yellow + otherColor.yellow;
    c.red = self.red + otherColor.red;
    c.purple = self.purple + otherColor.purple;
    c.pink = self.pink + otherColor.pink;
    c.black = self.black + otherColor.black;
    c.orange = self.orange + otherColor.orange;
    return c;
}

// Objective C doesn't have tuples :(
// This NSArray has the color (UIColor*) at index 0 and
// the color name (NSString*) at index 1,
// the color's personality adjectives (NSString*) at index 2
-(NSArray*)getDominantColor {
    int highestScore;
    UIColor *dominantColor;
    NSString *dominantColorName;
    NSString *dominantColorAdjectives;
    
    if (self.blue > self.green) {
        dominantColor = [UIColor blueColor];
        dominantColorName = @"Blue";
        dominantColorAdjectives = @"calm, friendly";
        highestScore = self.blue;
    }
    else { // self.green > self.blue
        dominantColor = [UIColor greenColor];
        dominantColorName = @"Green";
        dominantColorAdjectives = @"wild, outdoorsy";
        highestScore = self.green;
    }
    if (self.yellow > highestScore) {
        dominantColor = [UIColor yellowColor];
        dominantColorName = @"Yellow";
        dominantColorAdjectives = @"bright, happy";
        highestScore = self.yellow;
    }
    if (self.red > highestScore) {
        dominantColor = [UIColor redColor];
        dominantColorName = @"Red";
        dominantColorAdjectives = @"competitive, fiery";
        highestScore = self.red;
    }
    if (self.purple > highestScore) {
        dominantColor = [UIColor purpleColor];
        dominantColorName = @"Purple";
        dominantColorAdjectives = @"shy, quiet";
        highestScore = self.purple;
    }
    if (self.pink > highestScore) {
        dominantColor = [AMColor pinkColor];
        dominantColorName = @"Pink";
        dominantColorAdjectives = @"bubbly, fun";
        highestScore = self.pink;
    }
    if (self.black > highestScore) {
        dominantColor = [UIColor blackColor];
        dominantColorName = @"Black";
        dominantColorAdjectives = @"dark, reserved";
        highestScore = self.black;
    }
    if (self.orange > highestScore) {
        dominantColor = [UIColor orangeColor];
        dominantColorName = @"Orange";
        dominantColorAdjectives = @"fun, artistic";
        highestScore = self.orange;
    }
    
    MAX(self.blue, self.green);
    return [NSArray arrayWithObjects:dominantColor, dominantColorName, dominantColorAdjectives, nil];
}

@end
