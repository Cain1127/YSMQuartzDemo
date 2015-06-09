//
//  DrawRectView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawRectView.h"

//#define ___UNUSE_SYSTEM_API___

@implementation DrawRectView

- (void)drawRect:(CGRect)rect
{

#ifdef ___UNUSE_SYSTEM_API___
    //1.取得图形上下文对象
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //2、添加矩形对象
    CGRect tempRect = CGRectMake(5.0f, 5.0f, rect.size.width - 10.0f, rect.size.height / 2.0f - 10.0f);
    CGContextAddRect(context,tempRect);
    
    //设置属性
    [[UIColor lightGrayColor] set];
    
    //3、绘制
    CGContextDrawPath(context, kCGPathFillStroke);
    
    //4.绘制路径
    CGContextDrawPath(context, kCGPathFillStroke);
#else
    CGRect tempRect1 = CGRectMake(5.0f, 5.0f, rect.size.width - 10.0f, rect.size.height - 10.0f);
    CGRect tempRect2 = CGRectMake(5.0f, rect.size.height / 2.0f + 5.0f, rect.size.width - 10.0f, rect.size.height / 2.0f - 10.0f);
    
    //设置属性
    [[UIColor yellowColor] set];
    
    //绘制矩形,相当于创建对象、添加对象到上下文、绘制三个步骤
    UIRectFill(tempRect1);//绘制矩形（只有填充）
    
    [[UIColor redColor] setStroke];
    UIRectFrame(tempRect2);//绘制矩形(只有边框)
#endif

}

@end
