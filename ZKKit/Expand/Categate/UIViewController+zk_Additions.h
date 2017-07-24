//
//  UIViewController+zk_Additions.h
//  ZKKit
//
//  Created by pang on 2017/7/13.
//  Copyright © 2017年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (zk_Additions)

- (UIViewController *)zk_topViewController;
+ (UIViewController *)zk_topViewController;

- (void)showAlertWithTitle:(NSString *)title andMsg:(NSString *)msg cancelTitle:(NSString *)cancelTitle otherTitles:(NSArray *)otherTitles handler:(void (^)(NSUInteger))handler;
- (void)showAlertWithMsg:(NSString *)msg cancelTitle:(NSString *)cancelTitle otherTitles:(NSArray *)otherTitles handler:(void (^)(NSUInteger))handler;
- (void)showAlertWithTitle:(NSString *)title andMsg:(NSString *)msg handler:(void (^)(NSUInteger))handler;
- (void)showAlert1WithMsg:(NSString *)msg handler:(void (^)(NSUInteger))handler;
- (void)showAlert2WithMsg:(NSString *)msg handler:(void (^)(NSUInteger))handler;
- (void)showAlertWithMsg:(NSString *)msg;
- (void)showAlertWithTitle:(NSString *)title andMsg:(NSString *)msg;

@end
