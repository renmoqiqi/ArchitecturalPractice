//
//  LoginViewService.h
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

/*
 
 构建出一套完整的业务模型框架出来供控制器来使用了。我们设计出一个业务模型类比如XXXXService，它内部封装了状态以及不用的网络请求，以及一些文件读写的实现等。理论上也是属于模型层这里单独抽象出一层。
 
 */

#import <Foundation/Foundation.h>

@class LoginViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewService : NSObject

//网络请求
-(void)request:(void (^)(LoginViewModel *model, NSError *error))callback;
//用户登录状态
- (BOOL)isUserLoginStatus;

@end

NS_ASSUME_NONNULL_END
