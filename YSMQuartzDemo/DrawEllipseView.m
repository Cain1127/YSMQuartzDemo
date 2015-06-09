//
//  DrawEllipseView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawEllipseView.h"

@implementation DrawEllipseView

- (void)drawRect:(CGRect)rect
{

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //添加对象,绘制椭圆（圆形）的过程也是先创建一个矩形
    CGRect tempRect = CGRectMake(5.0f, 5.0f, rect.size.width - 10.0f, (rect.size.height - 10.0f) / 2.0f);
    CGContextAddEllipseInRect(context, tempRect);
    
    //设置属性
    [[UIColor purpleColor] set];
    
    //绘制
    CGContextDrawPath(context, kCGPathFillStroke);

}

@end
