//
//  MPConfig.h
//  IMChat
//
//  Created by admin on 2017/1/25.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPConfig : NSObject
/*
 //此处 apiURL 为网易云信 Demo 应用服务器地址，更换 appkey 后，请更新为应用自己的服务器接口地址，并提供相关接口服
*/
+ (MPConfig *)sharedManager;
@property (nonatomic,strong) NSString *appKey;
@property (nonatomic,strong) NSString *apiURL;
@property (nonatomic,strong) NSString *cerName;
@end
