//
//  DrawTextView.m
//  YSMQuartzDemo
//
//  Created by ysmeng on 15/6/1.
//  Copyright (c) 2015年 广州七升网络科技有限公司. All rights reserved.
//

#import "DrawTextView.h"

@implementation DrawTextView

- (void)drawRect:(CGRect)rect
{
    
    //绘制到指定的区域内容
    NSString *str = @"SWIFT又称：“环球同业银行金融电讯协会”，是国际银行同业间的国际合作组织，成立于一九七三年，目前全球大多数国家大多数银行已使用SWIFT系统。SWIFT的使用，使银行的结算提供了安全、可靠、快捷、标准化、自动化的通讯业务，从而大大提高了银行的结算速度。由于SWIFT的格式具有标准化，目前信用证的格式主要都是用SWIFT电文。";
    CGRect tempRect = CGRectMake(5.0f, 5.0f, rect.size.width - 10.0f, rect.size.height - 10.0f);
    
    UIFont *font = [UIFont systemFontOfSize:18.0f];//设置字体
    UIColor *color=[UIColor redColor];
    
    //字体颜色
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    
    //段落样式
    NSTextAlignment align = NSTextAlignmentLeft;//对齐方式
    style.alignment = align;
    [str drawInRect:tempRect withAttributes:@{NSFontAttributeName:font,
                                          NSForegroundColorAttributeName:color,
                                          NSParagraphStyleAttributeName:style}];

}

@end
