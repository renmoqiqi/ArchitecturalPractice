//
//  LoginViewController.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import "LoginViewController.h" // C

#import "LoginView.h" // C 持有可操作 V

#import "LoginViewService.h" // C 持有可操作 M业务模型

#import "LoginViewModel.h" // C 持有可操作 M模型

//路由
#import <AnnotationKit/AKRouter.h>
#import <AnnotationKit/AKRouteAnnotation.h>

@interface LoginViewController ()

//业务模型
@property (strong, nonatomic) LoginViewService *loginViewService;

//视图
@property (strong, nonatomic) LoginView *loginHeaderView;

@end

@implementation LoginViewController

#pragma mark - Controller Life Cycle 模板设计模式


//加载我们自定义View 一般默认是采用系统的 xib 或者 SB 来布局， 有些不喜欢但是确放到了C里
- (void)loadView
{
    self.view = self.loginHeaderView;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //这里假如是一个点击事件
    [self handleClick:nil];
    //V 通过 block 通知 C
    self.loginHeaderView.loginViewButtonTapBlock = ^{
       //路由到B
        [[AKRouter shared] routeTo:@"smyapp://Main/index"];

    };

}

#pragma mark - Actions

-(void)handleClick:(id)sender
{
    [self.loginViewService request:^(LoginViewModel * _Nonnull model, NSError * _Nonnull error) {
        if (error == nil)
        {

            // 将model的数据更新到某个视图中去。
            [self.loginHeaderView update:model];
        }
        else
        {
            //..错误处理。
        }
    }];
}


#pragma mark - Getter And Setter

- (LoginViewService *)loginViewService
{
    if (!_loginViewService) {
        _loginViewService = [LoginViewService new];
    }
    return _loginViewService;
}

- (LoginView *)loginHeaderView
{
    if (!_loginHeaderView) {
        _loginHeaderView = [LoginView new];
        
    }
    return _loginHeaderView;

}

@end
