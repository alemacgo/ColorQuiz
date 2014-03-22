//
//  AMAnswer.m
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import "AMAnswer.h"

@implementation AMAnswer

-(id)init {
    return [self initFromText:@"?" withColor:[[AMColor alloc] init]];
}

-(id)initFromText:(NSString*) text withColor:(AMColor*) color {
    self = [super init];
    if (self) {
        self.text = text;
        self.color = color;
    }
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"%@, %@", self.text, [self.color description]];
}

@end
