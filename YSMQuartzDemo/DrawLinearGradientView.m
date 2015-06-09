//
//  DrawLinearGradientView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawLinearGradientView.h"

@implementation DrawLinearGradientView

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //裁切处一块矩形用于显示，注意必须先裁切再调用渐变
//    CGContextClipToRect(context, CGRectMake(20, 50, 280, 300));
    
    //裁切还可以使用UIKit中对应的方法
//    UIRectClip(CGRectMake(20, 50, 280, 300));
    
    //使用rgb颜色空间
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    /**
     *
     *  指定渐变色
     *
     *  space:颜色空间
     *  components:颜色数组,注意由于指定了RGB颜色空间，那么四个数组元素表示一个颜色（red、green、blue、alpha）， 如果有三个颜色则这个数组有4*3个元素
     *  locations:颜色所在位置（范围0~1），这个数组的个数不小于components中存放颜色的个数
     *  count:渐变个数，等于locations的个数
     *
     */
    
    CGFloat compoents[12] = {
        
        248.0 / 255.0,
        86.0 / 255.0,
        86.0 / 255.0,
        1.0f,
        
        249.0 / 255.0,
        127.0 / 255.0,
        127.0 / 255.0,
        1.0f,
        
        1.0,
        1.0,
        1.0,
        1.0};
    CGFloat locations[3] = {0,0.3,1.0};
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
    
    /**
     *
     *  绘制线性渐变
     *  context:图形上下文
     *  gradient:渐变色
     *  startPoint:起始位置
     *  endPoint:终止位置
     *  options:绘制方式:
     *      kCGGradientDrawsBeforeStartLocation 开始位置之前就进行绘制，到结束位置之后不再绘制，
            kCGGradientDrawsAfterEndLocation开始位置之前不进行绘制，到结束点之后继续填充
     *
     */

    CGContextDrawLinearGradient(context,
                                gradient,
                                CGPointMake(0.0f, 0.0f),
                                CGPointMake(rect.size.width, rect.size.height),
                                kCGGradientDrawsAfterEndLocation);
    
    //释放颜色空间
    CGColorSpaceRelease(colorSpace);
    
}

@end
