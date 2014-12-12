//
//  ANTChineseToPinYin.h
//  IOANTFrameWork
//
//  Created by liushuai on 14-12-12.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANTChineseToPinYin : NSObject
/** 将中文语句转化为拼音 每个汉字字母全部大写
 中国 ZHONGGUO */
+ (NSString *) pinyinFromChiniseStringAllUpper:(NSString *)string;
/** 将中文语句转化为拼音 每个汉字首字母大写
 中国 ZhongGuo */
+ (NSString *) pinyinFromChiniseStringCapitalUpper:(NSString *)string;
+ (char) sortSectionTitle:(NSString *)string;
@end
