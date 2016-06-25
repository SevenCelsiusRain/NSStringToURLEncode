//
//  NSString+QDURLEncode.h
//  NSStringToURLEncode
//
//  Created by SevenCelsius on 16/6/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (QDURLEncode)

/**
 URL编码
 */
- (NSString *) URLEncode;
- (NSString *) URLEncodeUsingEncoding:(NSStringEncoding)encoding;

/**
 URL解码
 */
- (NSString *) URLDecode;
- (NSString *) URLDecodeUsingEncoding:(NSStringEncoding)encoding;

@end
