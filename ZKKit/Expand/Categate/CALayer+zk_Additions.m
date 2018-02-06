//
//  CALayer+zk_Additions.m
//  DwQueryPro
//
//  Created by pang on 2017/11/27.
//  Copyright © 2017年 zk. All rights reserved.
//

#import "CALayer+zk_Additions.h"

@implementation CALayer (zk_Additions)

- (void)setBorderUIColor:(UIColor *)borderUIColor {
    self.borderColor = borderUIColor.CGColor;
}

- (UIColor *)borderUIColor {
    return [UIColor colorWithCGColor:self.borderColor];
}

@end
