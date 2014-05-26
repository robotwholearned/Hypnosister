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
        self.backgroundColor = [UIColor clearColor];
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
    float maxRadius = hypot(bounds.size.height, bounds.size.width) / 2.0;

    UIBezierPath* bezierPath = [[UIBezierPath alloc] init];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [bezierPath moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [bezierPath addArcWithCenter:center
                              radius:currentRadius
                          startAngle:0.0
                            endAngle:M_PI * 2.0
                           clockwise:YES];
    }
    [bezierPath setLineWidth:10];

    [[UIColor lightGrayColor] setStroke];

    [bezierPath stroke];

    UIImage* logoImage = [UIImage imageNamed:@"logo"];
    CGRect someRect = CGRectMake(CGRectGetMidX(bounds) / 2.0, CGRectGetMidY(bounds) / 2.0, bounds.size.width / 2.0, bounds.size.height / 2.0);
    [logoImage drawInRect:someRect];
}

@end
