//
//  MyView.m
//  streda2
//
//  Created by student on 21.01.15.
//  Copyright (c) 2015 robert. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextSetLineWidth(context, 5);
    CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextMoveToPoint(context, rect.size.width, 0);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextStrokePath(context);
    
    UIFont* font = [UIFont fontWithName:@"Optima" size:15];
    [self.text drawAtPoint:CGPointMake(10, rect.size.height / 2) withFont:font];
    CGContextRestoreGState(context);
}


@end
