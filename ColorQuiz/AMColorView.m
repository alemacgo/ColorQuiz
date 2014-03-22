//
//  AMColorView.m
//  ColorQuiz
//
//  Created by Alejandro Machado on 14/3/22.
//  Copyright (c) 2014 M-ITI. All rights reserved.
//

#import "AMColorView.h"

@implementation AMColorView

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:frame withColor:[UIColor whiteColor]];
}

- (id)initWithFrame:(CGRect)frame withColor:(UIColor *)fillColor
{
    self = [super initWithFrame:frame];
    if (self) {
        self.fillColor = fillColor;
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();  // Get the context
    
    // Set graphics state parameters
    CGContextSetLineWidth(context, 4.0f);
    
    [self.fillColor setFill];    
    [[UIColor blackColor] setStroke];
    
    // Add geometry to the current path
    CGContextAddEllipseInRect(context, CGRectInset(self.bounds, 2.0f, 2.0f));
    //If you don't have the inset, the strokes get cut off
    
    CGContextDrawPath(context, kCGPathFillStroke);  // Paint the context
    
    //UIRectFill(rect);
}


@end
