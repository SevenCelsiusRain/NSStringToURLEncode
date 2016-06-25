//
//  NSString+QDURLEncode.m
//  NSStringToURLEncode
//
//  Created by SevenCelsius on 16/6/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "NSString+QDURLEncode.h"

@implementation NSString (QDURLEncode)

- (NSString *) URLEncode {
    
    return [self URLEncodeUsingEncoding:NSUTF8StringEncoding];
}

- (NSString *) URLEncodeUsingEncoding:(NSStringEncoding)encoding {
    
    return (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (__bridge CFStringRef)self, NULL, (__bridge_retained CFStringRef)@"!*’”();:@&=+$,/?%#[]%\\", CFStringConvertNSStringEncodingToEncoding(encoding));
//    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:@"!*’”();:@&=+$,/?%#[]%\\"]];
}

/**
 URL解码
 */
- (NSString *) URLDecode {
    
    return [self URLDecodeUsingEncoding:NSUTF8StringEncoding];
}

- (NSString *) URLDecodeUsingEncoding:(NSStringEncoding)encoding {
    
    return (__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge_retained CFStringRef)self, CFSTR(""), CFStringConvertNSStringEncodingToEncoding(encoding));
}

@end
