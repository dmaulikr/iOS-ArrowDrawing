//
//  SCCoreGraphicsArrowView.m
//  ArrowDrawing
//
//  Created by Sam Davies on 05/03/2014.
//  Copyright (c) 2014 Shinobi Controls. All rights reserved.
//

#import "SCCoreGraphicsArrowView.h"

@implementation SCCoreGraphicsArrowView

@synthesize lineThickness = _lineThickness;
@synthesize bendiness = _bendiness;
@synthesize color = _color;
@synthesize curveType = _curveType;
@synthesize from = _from;
@synthesize to = _to;
@synthesize headSize = _headSize;

- (id)initWithFrame:(CGRect)frame from:(CGPoint)from to:(CGPoint)to
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        self.from = from;
        self.to = to;
        // Set some defaults
        self.color = [UIColor redColor];
        self.lineThickness = 2.0;
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef cxt = UIGraphicsGetCurrentContext();
    CGContextBeginPath(cxt);
    CGPoint start = [self convertNormalisedPointToCurrentFrame:self.from];
    CGPoint end   = [self convertNormalisedPointToCurrentFrame:self.to];
    CGContextMoveToPoint(cxt, start.x, start.y);
    CGContextAddQuadCurveToPoint(cxt, CGRectGetMaxX(self.bounds), 0, end.x, end.y);
    [self.color setStroke];
    CGContextSetLineWidth(cxt, self.lineThickness);
    CGContextStrokePath(cxt);
}

- (CGPoint)convertNormalisedPointToCurrentFrame:(CGPoint)normalisedPoint
{
    CGPoint nonNormalised;
    nonNormalised.x = normalisedPoint.x * CGRectGetWidth(self.bounds);
    nonNormalised.y = normalisedPoint.y * CGRectGetHeight(self.bounds);
    return nonNormalised;
}


@end