//
//  MainController.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/22.
//

#import "MainController.h"

#import "ModuleAServiceProtocol.h"
#import "SMYProtocolKit.h"

#import <AnnotationKit/AKRouter.h>
#import <AnnotationKit/AKRouteAnnotation.h>

@interface MainController ()

@end

//标记类似Java的注解
@RequestMapping(MainController, "smyapp://Main/index")

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 本地组件通信
    id <ModuleAServiceProtocol> ModuleA = SMYGetModule(ModuleAServiceProtocol);
    if ([ModuleA isCurrentUserLoginStatus])
    {
        NSLog(@"YES");
    }
    else
    {
        
    }
}


@end
