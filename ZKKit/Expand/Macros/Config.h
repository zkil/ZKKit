//
//  Config.h
//  ZKKit
//
//  Created by pang on 2017/6/29.
//  Copyright © 2017年 zk. All rights reserved.
//

#ifndef Config_h
#define Config_h


#define WeakSelf(weakSelf)      __weak __typeof(&*self)    weakSelf  = self;
#define StrongSelf(strongSelf)  __strong __typeof(&*self) strongSelf = weakSelf;


#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:1]
#define RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:a]
#define PixelY(pixl) ((pixl)/1334.f) * kSCREEN_HEIGHT
#define PixelX(pixl) ((pixl)/750.f) * kSCREEN_WIDTH
#define PointY(pt) (((pt) * 2)/1334.f) * kSCREEN_HEIGHT
#define PointX(pt) (((pt) * 2)/750.f) * kSCREEN_WIDTH
#define Localized(text)  NSLocalizedString(text, nil)

#define WeakSelf(weakSelf)      __weak __typeof(&*self)    weakSelf  = self;
#define StrongSelf(strongSelf)  __strong __typeof(&*self) strongSelf = weakSelf;

#define APP_VERSION [[NSBundle mainBundle]objectForInfoDictionaryKey:@"CFBundleShortVersionString"]
#define kSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define DOCUMENT_PATH [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
#endif /* Config_h */
