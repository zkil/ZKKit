//
//  AppDelegate+RemoteNotification.m
//  ZKKit
//
//  Created by pang on 2017/8/4.
//  Copyright © 2017年 zk. All rights reserved.
//

#import "AppDelegate+RemoteNotification.h"
#import <UserNotifications/UserNotifications.h>

@implementation AppDelegate (RemoteNotification)

//注册通知
- (void)registerForRemoteNotification
{
    
#ifdef __IPHONE_10_0
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNAuthorizationOptions options = UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert;
    [center requestAuthorizationWithOptions:options completionHandler:^(BOOL granted, NSError * _Nullable error) {
        
    }];
     
#elif __IPHONE_8_0
    // iOS8
    UIApplication * application = [UIApplication sharedApplication];
    UIUserNotificationSettings *notiSettings = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeBadge | UIUserNotificationTypeAlert | UIUserNotificationTypeSound) categories:nil];
    [application registerUserNotificationSettings:notiSettings];
    
#else 
    // iOS7
    UIApplication * application = [UIApplication sharedApplication];
    [application registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge |UIRemoteNotificationTypeSound   | UIRemoteNotificationTypeAlert)];

    
#endif
    
}

//注册推送后设置
#ifdef __IPHONE_8_0
- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings
{
    [application registerForRemoteNotifications];
}
#endif

-(void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    NSLog(@"注册通知出现错误:%@",error);
}

//token
-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    NSString *token = [NSString stringWithFormat:@"%@",deviceToken];
    token = [token stringByReplacingOccurrencesOfString:@" " withString:@""];
    token = [token stringByReplacingOccurrencesOfString:@"<" withString:@""];
    token = [token stringByReplacingOccurrencesOfString:@">" withString:@""];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:token forKey:@"token"];
    
    NSLog(@"token:%@",deviceToken);
}

//接收通知
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
}

//后台通知
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    completionHandler(UIBackgroundFetchResultNewData);
    //需要打开后台通知权限
}

@end
