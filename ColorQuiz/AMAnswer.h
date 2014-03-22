//
//  AMAnswer.h
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMColor.h"

@interface AMAnswer : NSObject
@property NSString* text;
@property AMColor* color;

-(id)initFromText:(NSString*) text withColor:(AMColor*) color;

@end
