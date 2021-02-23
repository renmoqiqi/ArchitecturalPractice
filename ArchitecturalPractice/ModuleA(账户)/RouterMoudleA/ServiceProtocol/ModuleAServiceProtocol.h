//
//  ModuleAServiceProtocol.h
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ModuleAServiceProtocol <NSObject>
//暴露给其他组件使用
- (BOOL)isCurrentUserLoginStatus;
@end

NS_ASSUME_NONNULL_END
