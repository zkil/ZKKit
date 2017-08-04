
/**
 rgb转UIColor

 @param r
 @param g
 @param b

 @return UIColor
 */
#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:1]
#define RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:a]


#import <UIKit/UIKit.h>
@interface UIColor (zk_Hex)

//16进制转UIColor
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
//转16进制
- (NSString *)rgbString;
@end
