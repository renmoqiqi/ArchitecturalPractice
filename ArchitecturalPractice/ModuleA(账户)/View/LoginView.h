//
//  LoginView.h
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import <UIKit/UIKit.h>

#import "LoginViewModelProtocol.h"

typedef void(^LoginViewButtonTapBlock)(void);

NS_ASSUME_NONNULL_BEGIN

@interface LoginView : UIView

//通过协议把View 和 Model 隔离
-(void)update:(id<LoginViewModelProtocol>)data;
//通知C
@property (copy, nonatomic) LoginViewButtonTapBlock loginViewButtonTapBlock;

@end

NS_ASSUME_NONNULL_END
