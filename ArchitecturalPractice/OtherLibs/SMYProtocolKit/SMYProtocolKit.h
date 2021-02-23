//
//  SMYProtocolKit.h
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/22.
//

#import <Foundation/Foundation.h>

//宏定义注册和获取组件
#define SMYRegisterModule(service_protocol) [[SMYProtocolKit sharedManger] registerProtocol:@protocol(service_protocol) forClass:self.class];
#define SMYGetModule(service_protocol) [[SMYProtocolKit sharedManger] classForProtocol:@protocol(service_protocol)];

NS_ASSUME_NONNULL_BEGIN

@interface SMYProtocolKit : NSObject

+ (instancetype)sharedManger;

- (id)classForProtocol:(Protocol *)proto;

- (void)registerProtocol:(Protocol *)proto forClass:(Class)cls;

@end

NS_ASSUME_NONNULL_END
