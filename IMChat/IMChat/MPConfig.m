//
//  MPConfig.m
//  IMChat
//
//  Created by admin on 2017/1/25.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MPConfig.h"

@implementation MPConfig

+(MPConfig *)sharedManager
{
    
    static MPConfig *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[MPConfig alloc] init];
    });
    return manager;
}
-(instancetype)init
{
    if (self)
    {
        self = [super init];
        _appKey = @"45c6af3c98409b18a84451215d0bdd6e";
        _apiURL = @"https://app.netease.im/api";
        _cerName = @"ENTERPRISE";
    }
    return self;
}
-(NSString *)appKey{
    return _appKey;
}
-(NSString *)apiURL{
    return _apiURL;
}
-(NSString *)cerName{
    return _cerName;
}
@end
