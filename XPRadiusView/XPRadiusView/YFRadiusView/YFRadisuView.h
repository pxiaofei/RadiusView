//
//  YFRadisuView.h
//  XPRadiusView
//
//  Created by peiyf on 15/8/26.
//  Copyright (c) 2015年 pxiaofei. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface YFRadisuView : UIView
@property (nonatomic, assign) IBInspectable BOOL topLeftRadius;
@property (nonatomic, assign) IBInspectable BOOL topRightRadius;
@property (nonatomic, assign) IBInspectable BOOL bottomLeftRadius;
@property (nonatomic, assign) IBInspectable BOOL bottomRightRadius;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@end
