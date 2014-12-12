//
//  ANTPinYin.h
//  IOANTFrameWork
//
//  Created by liushuai on 14-12-12.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 * // Example
 *
 * #import "pinyin.h"
 *
 * NSString *hanyu = @"中国共产党万岁！";
 * for (int i = 0; i < [hanyu length]; i++)
 * {
 *     printf("%c", pinyinFirstLetter([hanyu characterAtIndex:i]));
 * }
 *
 */
#define ALPHA	@"ABCDEFGHIJKLMNOPQRSTUVWXYZ#"
char pinyinFirstLetter(unsigned short hanzi);
/*
 *  -uppercasePinYinFirstLetter
 *  -lowercasePinYinFirstLetter
 *
 *  // Example
 *  #import "pinyin.h"
 *  NSString *hanyu = @"中国共产党万岁！";
 *  NSLog(@"%@",[hanyu uppercasePinYinFirstLetter]);//Z
 *  NSLog(@"%@",[hanyu lowercasePinYinFirstLetter]);//z
 *
 */
@interface NSString(ANTPinYin)
- (NSString *) uppercasePinYinFirstLetter;
- (NSString *) lowercasePinYinFirstLetter;

@end
