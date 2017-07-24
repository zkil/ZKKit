//
//  UIColor+Hex.h
//  OA.message
//
//  Created by lee on 16/6/3.
//  Copyright © 2016年 sanchun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

//16进制转UIColor
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
//UIColor转16进制
+ (NSString *)rgbColorStingWith:(UIColor *)color;
- (NSString *)changeRGBString;
@end
