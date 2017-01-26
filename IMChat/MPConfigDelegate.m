//
//  MPConfigDelegate.m
//  IMChat
//
//  Created by admin on 2017/1/25.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MPConfigDelegate.h"
#import <NIMNotificationContent.h>
@implementation MPConfigDelegate

-(BOOL)shouldIgnoreNotification:(NIMNotificationObject *)notification{
    
    BOOL ignore = NO;
    NIMNotificationContent *content = [notification content];
    if ([content isKindOfClass:[NIMTeamNotificationContent class]]) //这里做个示范如何忽略部分通知 (不在聊天界面显示)
    {
        
        NSArray *types = [[NTESBundleSetting sharedConfig] ignoreTeamNotificationTypes];
        NIMTeamOperationType type = [(NIMTeamNotificationContent *)content operationType];
        for (NSString *item in types)
        {
            if (type == [item integerValue])
            {
                ignore = YES;
                break;
            }
        }
    }
    return ignore;
}

@end
