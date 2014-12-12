//
//  LogUtil.h
//  IOANTFrameWork
//
//  Created by liushuai on 14-12-12.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LogUtil : NSObject
#define ALog(format, ...) NSLog((@"%s [L%d] " format), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#ifdef DEBUG
#define LSLog(format, ...) ALog(format, ##__VA_ARGS__)
#else
#define LSLog(...)
#endif
+(void)i:(NSString *)format,...;
@end
