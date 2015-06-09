//
//  DrawRadialGradientView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawRadialGradientView.h"

@implementation DrawRadialGradientView

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
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
        248.0f / 255.0f,
        86.0f / 255.0f,
        86.0f / 255.0f,
        1.0f,
        
        249.0f / 255.0f,
        127.0f / 255.0f,
        127.0f / 255.0f,
        1.0f,
        
        1.0f,
        1.0f,
        1.0f,
        1.0f
    };
    
    CGFloat locations[3] = {0,0.3,1.0};
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace,
                                                                 compoents,
                                                                 locations,
                                                                 3);
    
    /**
     *
     *  绘制径向渐变
     *
     *  context:图形上下文
     *  gradient:渐变色
     *  startCenter:起始点位置
     *  startRadius:起始半径(通常为0，否则在此半径范围内容无任何填充)
     *  endCenter:终点位置（通常和起始点相同，否则会有偏移）
     *  endRadius:终点半径（也就是渐变的扩散长度）
     *  options:绘制方式：
                    kCGGradientDrawsBeforeStartLocation 开始位置之前就进行绘制，但是到结束位置之后不再绘制， 
                    kCGGradientDrawsAfterEndLocation开始位置之前不进行绘制，但到结束点之后继续填充
     *
     */
    
    CGContextDrawRadialGradient(context,
                                gradient,
                                CGPointMake(rect.size.width / 2.0f, rect.size.height / 2.0f),
                                0.0f,
                                CGPointMake(rect.size.width / 2.0f, rect.size.height / 2.0f),
                                (rect.size.height - 20.0f) / 2.0f,
                                kCGGradientDrawsAfterEndLocation);
    
    //释放颜色空间
    CGColorSpaceRelease(colorSpace);
    
}

@end
