//
//  ViewController.m
//  BezierPath_onSquareView
//
//  Created by Carlos Santiago Cruz on 8/30/19.
//  Copyright © 2019 Carlos Santiago Cruz. All rights reserved.
//

#import "ViewController.h"
#import "SquareView.h"

@interface ViewController ()
{
    SquareView *squareView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat squareViewWidth = 300;
    CGFloat squareViewHeight = 300;
    
    squareView = [[SquareView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-squareViewWidth/2,
                                                              self.view.bounds.size.height/2-squareViewHeight/2,
                                                              squareViewWidth,
                                                              squareViewHeight)];
    [self.view addSubview:squareView];
}


@end
