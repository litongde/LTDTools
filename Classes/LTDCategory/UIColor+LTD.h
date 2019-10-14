//
//  UIColor+LTD.h
//  LTDTest
//
//  Created by Litongde on 2019/10/14.
//  Copyright © 2019 同心同德（武汉）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (LTD)

/// RGB 对应的16制字符串生成UIColor
+ (UIColor *)colorWithHexRGBString:(NSString *)hexString;

/// 16制对应的数值生成UICOlor
+ (UIColor *)colorWithHexRGB:(NSUInteger)hexRGB;


+ (UIColor *)colorWithGradientColors:(NSArray<UIColor *> * _Nonnull)colors;
+ (UIColor *)colorWithGradientColors:(NSArray<UIColor *> * _Nonnull)colors withFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
