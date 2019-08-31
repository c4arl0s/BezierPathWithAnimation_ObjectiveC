//
//  SquareView.m
//  BezierPath_onSquareView
//
//  Created by Carlos Santiago Cruz on 8/30/19.
//  Copyright © 2019 Carlos Santiago Cruz. All rights reserved.
//

#import "SquareView.h"

@implementation SquareView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
    
    // establish line width
    bezierPath.lineWidth = 5;
    
    // establish origin of the line
    CGPoint originPoint = CGPointMake(0, 0);
    [bezierPath moveToPoint:originPoint];
    
    // establish the end of the line
    CGPoint firstPoint = CGPointMake(0, self.frame.size.height);
    [bezierPath addLineToPoint:firstPoint];
    
    CGPoint secondPoint = CGPointMake(self.frame.size.width, self.frame.size.height);
    [bezierPath addLineToPoint:secondPoint];
    
    CGPoint endPoint = CGPointMake(self.frame.size.width, 0);
    [bezierPath addLineToPoint:endPoint];
    
    [bezierPath closePath];
    [[UIColor redColor] set];
    [bezierPath stroke];
    
}


@end
