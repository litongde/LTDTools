//
//  UIColor+LTD.m
//  LTDTest
//
//  Created by Litongde on 2019/10/14.
//  Copyright © 2019 同心同德（武汉）有限公司. All rights reserved.
//

#import "UIColor+LTD.h"
#import "UIImage+LTD.h"

@implementation UIColor (LTD)

+ (UIColor *)colorWithHexRGBString:(NSString *)hexString {
    
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    
    unsigned int colorCode = 0;
    if (nil != hexString){
        NSScanner *scanner = [NSScanner scannerWithString:hexString];
        (void) [scanner scanHexInt:&colorCode];
    }
    
    UIColor *result = [self colorWithHexRGB:colorCode];
    
    return result;
}

+ (UIColor *)colorWithHexRGB:(NSUInteger)hexRGB {
    
    UIColor *result = nil;
    unsigned long colorCode = hexRGB;
    unsigned char redByte, greenByte, blueByte, alphaByte;
    alphaByte = 255;
    if (hexRGB >= 0XFFFFFF){
        alphaByte = (unsigned char) (colorCode >> 24);
    }
    
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode);
    
    result = [UIColor colorWithRed: (float)redByte / 0XFF green: (float)greenByte/ 0XFF blue: (float)blueByte / 0XFF alpha:(float)alphaByte / 0XFF];
    
    return result;
}

+ (UIColor *)colorWithGradientColors:(NSArray<UIColor *> * _Nonnull)colors {
    return  [self colorWithGradientColors:colors withFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 1)];
}

+ (UIColor *)colorWithGradientColors:(NSArray<UIColor *> * _Nonnull)colors withFrame:(CGRect)frame {
    return [UIColor colorWithPatternImage:[UIImage imageWithGradientColors:colors withFrame:frame]];
}

@end
