

#import "NSString+Hashing.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (NSString_Hashing)

- (NSString *)MD5Hash
{
    const char *original_str = [self UTF8String];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(original_str, (CC_LONG)strlen(original_str), result);
    
    NSMutableString *hash = [NSMutableString string];
    
    for (int i = 0; i < 16; i++)
        
        [hash appendFormat:@"%02X", result[i]];
    
    return [hash lowercaseString];}

@end
