//
//  YFRadisuView.m
//  XPRadiusView
//
//  Created by peiyf on 15/8/26.
//  Copyright (c) 2015年 pxiaofei. All rights reserved.
//

#import "YFRadisuView.h"

@interface YFRadisuView()
@property (nonatomic ,strong) UIColor *bgColor;
@end

@implementation YFRadisuView
-(void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:[UIColor clearColor]];
    _bgColor = backgroundColor;
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    UIBezierPath *p = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:(_bottomLeftRadius?UIRectCornerBottomLeft:0) | (_bottomRightRadius?UIRectCornerBottomRight:0) | (_topLeftRadius?UIRectCornerTopLeft:0) | (_topRightRadius?UIRectCornerTopRight:0) cornerRadii:CGSizeMake(_cornerRadius, 0)];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddPath(context, p.CGPath);
    CGContextClosePath(context);
    CGContextClip(context);
    CGContextAddRect(context, rect);
    CGContextSetFillColorWithColor(context, _bgColor.CGColor);
    CGContextFillPath(context);
}

@end
