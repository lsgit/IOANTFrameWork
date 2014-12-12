//
//  LogUtil.m
//  IOANTFrameWork
//
//  Created by liushuai on 14-12-12.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import "LogUtil.h"
@implementation LogUtil
+(void)i:(id)format, ...
{
    if(!format)
        return;
    va_list arglist;
    va_start(arglist, format);
    NSString *outStr = [[NSString alloc]initWithFormat:format arguments:arglist];
    va_end(arglist);
    NSLog(@"%@",outStr);
}
@end
