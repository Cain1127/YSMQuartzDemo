//
//  DrawBezierCurveView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawBezierCurveView.h"

@implementation DrawBezierCurveView

- (void)drawRect:(CGRect)rect
{

    /** 编制曲线方法
     *  CGContextAddQuadCurveToPoint(CGContextRef c, CGFloat cpx, CGFloat cpy, CGFloat x, CGFloat y);
     
     *  CGContextAddCurveToPoint(context, CGFloat cp1x, CGFloat cp1y, CGFloat cp2x, CGFloat cp2y, CGFloat x, CGFloat y);
     */
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //绘制曲线
    CGContextMoveToPoint(context, 5.0f, rect.size.height / 2.0f - 5.0f);//移动到起始位置
    
    /** 
     *
     *  绘制二次贝塞尔曲线
     *
     *  c:图形上下文
     *  cpx:控制点x坐标 
     *  cpy:控制点y坐标
     *  x:结束点x坐标
     *  y:结束点y坐标
     *
     */
    
    CGContextAddQuadCurveToPoint(context, rect.size.width / 2.0f, 5.0f, rect.size.width - 5.0f, rect.size.height / 2.0f - 5.0f);
    
    
    /**
     *
     *  绘制三次贝塞尔曲线
     *
     *  c:图形上下文
     *  cp1x:第一个控制点x坐标 
     *  cp1y:第一个控制点y坐标
     *  cp2x:第二个控制点x坐标
     *  cp2y:第二个控制点y坐标
     *  x:结束点x坐标
     *  y:结束点y坐标
     *
     */
    
    CGContextMoveToPoint(context, 5.0f, rect.size.height - 5.0f);
    CGContextAddCurveToPoint(context, 5.0f + (rect.size.width - 10.0f) / 4.0f, rect.size.height / 2.0f + 5.0f, 5.0f + 3.0f * (rect.size.width - 10.0f) / 4.0f, rect.size.height - 5.0f, rect.size.width - 5.0f, rect.size.height / 2.0f + 5.0f);
    
    //设置图形上下文属性
    [[UIColor yellowColor] setFill];
    [[UIColor redColor] setStroke];
    
    //绘制路径
    CGContextDrawPath(context, kCGPathFillStroke);

}

@end
