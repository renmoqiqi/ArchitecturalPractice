//
//  LoginViewService.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import "LoginViewService.h"
#import "LoginViewModel.h"

@implementation LoginViewService

-(void)request:(void (^)(LoginViewModel *model, NSError *error))callback
{
    LoginViewModel *loginHeaderViewModel = [LoginViewModel new];
    loginHeaderViewModel.name = @"77";
    //还是之前操作 1：判断code data 2: 转化模型 3：缓存操作
    callback(loginHeaderViewModel,nil);
}

- (BOOL)isUserLoginStatus
{
    //从数据库缓存取当前用户的状态
    return YES;
}
@end
