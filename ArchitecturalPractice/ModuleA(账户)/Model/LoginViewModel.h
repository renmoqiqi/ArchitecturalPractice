//
//  LoginViewModel.h
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import <Foundation/Foundation.h>
#import "LoginViewModelProtocol.h"
NS_ASSUME_NONNULL_BEGIN

/*
 如果视图的需要模型的参数很多的情况可以通过一个协议来解决
 */
@interface LoginViewModel : NSObject<LoginViewModelProtocol>
@property (copy, nonatomic) NSString *name;

@end

NS_ASSUME_NONNULL_END
