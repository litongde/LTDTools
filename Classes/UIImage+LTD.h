//
//  UIImage+LTD.h
//  LTDTest
//
//  Created by Litongde on 2019/10/14.
//  Copyright © 2019 同心同德（武汉）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LTD)

/// 通过UIColor 创建一个UIImage
+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageRenderingModeOriginalWithNamed:(NSString *)name;

+ (UIImage *)imageWithGradientColors:(NSArray<UIColor *> * _Nonnull)colors withFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
