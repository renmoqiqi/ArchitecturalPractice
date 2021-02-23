//
//  AppDelegate.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import "AppDelegate.h"

#import "LoginViewController.h"

//路由
#import <AnnotationKit/AKEngine.h>
#import <AnnotationKit/LifeCycleAnnnotation.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //路由组件初始化
    [[AKEngine sharedAKEngine]setUp];

    UINavigationController *loginViewNavi = [[UINavigationController alloc] initWithRootViewController:[[LoginViewController alloc] init]];
    [self.window setRootViewController:loginViewNavi];

    return YES;
}


@end
