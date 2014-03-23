//
//  AMColor.h
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMColor : NSObject

@property (nonatomic) int blue;
@property (nonatomic) int green;
@property (nonatomic) int yellow;
@property (nonatomic) int red;
@property (nonatomic) int purple;
@property (nonatomic) int pink;
@property (nonatomic) int black;
@property (nonatomic) int orange;

-(id)initFromString:(NSString*) string;
-(id)initFromColorName:(NSString*) colorName;

-(AMColor*)addColor:(AMColor*) otherColor;
-(NSArray*)getDominantColor;

@end
