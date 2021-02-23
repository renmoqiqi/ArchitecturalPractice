//
//  ModuleAService.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/22.
//

#import "ModuleAService.h"
#import "LoginViewService.h"
#import "SMYProtocolKit.h"


@implementation ModuleAService

+ (void)load
{
    //注册服务
    SMYRegisterModule(ModuleAServiceProtocol);
    
}
//获取当前用户登录状态
- (BOOL)isCurrentUserLoginStatus
{
    LoginViewService *loginViewService = [[LoginViewService alloc] init];
    return [loginViewService isUserLoginStatus];
}
@end
