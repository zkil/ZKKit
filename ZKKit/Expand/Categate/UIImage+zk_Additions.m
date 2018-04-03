//
//  UIImage+zk_Additions.m
//  ZKKit
//
//  Created by pang on 2018/2/7.
//  Copyright © 2018年 zk. All rights reserved.
//

#import "UIImage+zk_Additions.h"

@implementation UIImage (zk_Additions)


+ (instancetype)stretchableImageNamed:(NSString *)name {
    UIImage *image = [self imageNamed:name];
    return [image stretchableImage];
}



- (instancetype)stretchableImage {
    return [self stretchableImageWithLeftCapWidth:self.size.width/2 topCapHeight:self.size.height/2];
}

@end
