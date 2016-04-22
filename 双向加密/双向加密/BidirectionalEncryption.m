//
//  BidirectionalEncryption.m
//  双向加密
//
//  Created by zgq on 16/4/22.
//  Copyright © 2016年 zgq. All rights reserved.
//

#import "BidirectionalEncryption.h"
#import "NSString+Hashing.h"

@implementation BidirectionalEncryption

-(NSString *)twoWayEncrypted:(NSString *)strUrl {
    NSArray *arr=[strUrl componentsSeparatedByString:@"?"];
    NSString *paraUrl=arr[1];//取出参数
    NSArray *paraArr=[paraUrl  componentsSeparatedByString:@"&"];//取出所有的键值对
    NSString *allPara=@"";
    NSArray *sortedArr=[paraArr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSComparisonResult result=[obj1  compare:obj2];
        return result;
    }];
    for (NSInteger i=0;i<sortedArr.count;i++) {
    
        NSString *info1=[sortedArr[i] stringByReplacingOccurrencesOfString:@"=" withString:@""];
        if (i==paraArr.count-1) {
            info1=[info1 stringByAppendingString:@""];
        }else {
        info1 =[info1  stringByAppendingString:@"&"];
        }
         allPara= [allPara  stringByAppendingString:info1];
    }
    allPara =[allPara stringByAppendingString:@"@app"];
    NSLog(@"%@",allPara);
   allPara= [allPara MD5Hash];
    return allPara;
}
@end
