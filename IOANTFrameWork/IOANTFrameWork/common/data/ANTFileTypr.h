//
//  ANTFileTypr.h
//  IOANTFrameWork
//
//  Created by liushuai on 14-12-12.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    IOANTFileTypePNG = 13780,
    IOANTFileTypeJPG = 255216,
    IOANTFileTypeGIF = 7173,
    IOANTFileTypeMP3 = 7368,
    IOANTFileTypeRAR = 8297,
    IOANTFileTypeZIP = 8075,
    IOANTFileTypeBMP = 6677,
    IOANTFileTypeHTML = 6033,
    IOANTFileType7z = 55122,
    IOANTFileTypeXML = 6063,
    IOANTFileTypeTXT = 102100,
    IOANTFileTypeNOTSupport = 93041010,
    IOANTFileTypeNOTFile = 19930410
}IOANTFileTypeResult;
@interface ANTFileTypr : NSObject
+(NSString *)getFileMineTypeByData:(NSData *)data;
@end
