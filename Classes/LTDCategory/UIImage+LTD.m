//
//  UIImage+LTD.m
//  LTDTest
//
//  Created by Litongde on 2019/10/14.
//  Copyright © 2019 同心同德（武汉）有限公司. All rights reserved.
//

#import "UIImage+LTD.h"

@implementation UIImage (LTD)

+ (UIImage *)imageWithColor:(UIColor *)color {
    
    UIImage *resultImage = nil;
    
    if (color) {
        CGSize colorSize = CGSizeMake(1, 1);
        UIGraphicsBeginImageContext(colorSize);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, CGRectMake(0, 0, 1, 1));
        resultImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    
    return resultImage;
}

+ (UIImage *)imageRenderingModeOriginalWithNamed:(NSString *)name {
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (UIImage *)imageWithGradientColors:(NSArray<UIColor *> * _Nonnull)colors withFrame:(CGRect)frame {
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    gradientLayer.frame = frame;
    
    NSMutableArray *cgColors = [[NSMutableArray alloc] init];
    for (UIColor *color in colors) {
        [cgColors addObject:(id)[color CGColor]];
    }
    gradientLayer.colors = cgColors;
    [gradientLayer setStartPoint:CGPointMake(0.0, 0.5)];
    [gradientLayer setEndPoint:CGPointMake(1.0, 0.5)];
    
    UIGraphicsBeginImageContextWithOptions(gradientLayer.bounds.size,NO, [UIScreen mainScreen].scale);
    [gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *gradientColorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return gradientColorImage;
}

@end
