//
//  DrawArcView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawArcView.h"

@implementation DrawArcView

- (void)drawRect:(CGRect)rect
{

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    /** 添加弧形对象
     *  x:中心点x坐标
     *  y:中心点y坐标
     *  radius:半径
     *  startAngle:起始弧度
     *  endAngle:终止弧度
     *  closewise:是否逆时针绘制，0则顺时针绘制
     */
    
    CGContextAddArc(context, rect.size.width / 2.0f, rect.size.height / 2.0f, 100.0f, 0.0f, -M_PI, 1);
    
    //设置属性
    [[UIColor yellowColor] set];
    
    //绘制
    CGContextDrawPath(context, kCGPathFillStroke);

}

@end
