//
//  ANTFileTypr.m
//  IOANTFrameWork
//
//  Created by liushuai on 14-12-12.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import "ANTFileTypr.h"

static NSMutableDictionary *ioantFileTypeResultDict;
@implementation ANTFileTypr
+(NSString *)getFileMineTypeByData:(NSData *)data
{
    switch ([self getFileType:data]) {
        case IOANTFileTypePNG:
            return @"image/png";
        case IOANTFileTypeJPG:
            return @"image/jpeg";
        case IOANTFileTypeGIF:
            return @"image/gif";
        case IOANTFileTypeMP3:
            return @"audio/mpeg";
        case IOANTFileTypeRAR:
            return @"notsupport";
        case IOANTFileTypeZIP:
            return @"application/zip";
        case IOANTFileTypeBMP:
            return @"image/bmp";
        case IOANTFileTypeHTML:
            return @"notsupport";
        case IOANTFileType7z:
            return @"notsupport";
        case IOANTFileTypeTXT:
            return @"txt/plain";
        case IOANTFileTypeNOTFile:
            return @"notfile";
        case IOANTFileTypeNOTSupport:
            return @"notsupport";
        default:
            return nil;
    }
    
}
+(IOANTFileTypeResult)getFileType:(NSData *)data
{
    if (ioantFileTypeResultDict==nil) {
        ioantFileTypeResultDict = [[NSMutableDictionary alloc]init];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypePNG] forKey:@"13780"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeJPG] forKey:@"255216"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeGIF] forKey:@"7173"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeMP3] forKey:@"7368"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeRAR] forKey:@"8297"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeZIP] forKey:@"8075"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeBMP] forKey:@"6677"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeHTML] forKey:@"6033"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileType7z] forKey:@"55122"];
        [ioantFileTypeResultDict setValue:[NSNumber numberWithInt:IOANTFileTypeTXT] forKey:@"100100"];
    }
    if (data.length<2) {
        return  IOANTFileTypeNOTFile;
    }
    int char1 = 0 ,char2 =0 ; //必须这样初始化
    [data getBytes:&char1 range:NSMakeRange(0, 1)];
    [data getBytes:&char2 range:NSMakeRange(1, 1)];
    NSString *type = [NSString stringWithFormat:@"%i%i",char1,char2];
    NSLog(@"type:%@",type);
    NSNumber *tempNumber = ioantFileTypeResultDict[type];
    if (tempNumber!=nil) {
        return [tempNumber intValue];
    }else{
        return IOANTFileTypeNOTSupport;
    }
}
@end
