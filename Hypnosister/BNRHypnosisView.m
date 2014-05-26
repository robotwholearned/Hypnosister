//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Sandquist, Cassandra G on 5/23/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.*/
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float radius = MIN(bounds.size.height, bounds.size.width) / 2.0;

    UIBezierPath* bezierPath = [[UIBezierPath alloc] init];

    [bezierPath addArcWithCenter:center
                          radius:radius
                      startAngle:0
                        endAngle:M_PI * 2
                       clockwise:YES];
    [bezierPath stroke];
}

@end
