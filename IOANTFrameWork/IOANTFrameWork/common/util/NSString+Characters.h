#import <Foundation/Foundation.h>

@interface NSString (Characters)

//讲汉字转换为拼音
- (NSString *)pinyinOfName;

//汉字转换为拼音后，返回大写的首字母
- (NSString *)firstCharacterOfName;

@end
