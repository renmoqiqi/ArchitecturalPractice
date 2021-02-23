//
//  SMYProtocolKit.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/22.
//

#import "SMYProtocolKit.h"

@interface SMYProtocolKit ()

@property (nonatomic, strong) dispatch_queue_t readwriteQueue;

@property (nonatomic,strong,nullable) NSMutableDictionary *mapDics;

@end

@implementation SMYProtocolKit

+ (instancetype)sharedManger {
    static dispatch_once_t once;
    static SMYProtocolKit *sharedManger;
    dispatch_once(&once, ^{
        sharedManger = [[[self class] alloc] init];


    });
    return sharedManger;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        NSString* queueName = @"com.smy.protocolkit";
        _readwriteQueue = dispatch_queue_create([queueName UTF8String], DISPATCH_QUEUE_CONCURRENT);
    }
    return self;
}

- (void)registerProtocol:(Protocol *)proto forClass:(Class)cls {
    NSString *protocolStr = NSStringFromProtocol(proto);
    NSString *moduleStr = NSStringFromClass(cls);
    if (protocolStr.length == 0 || moduleStr.length == 0) {
        return;
    }
    dispatch_barrier_async(_readwriteQueue, ^{
        [self.mapDics setObject:cls forKey:NSStringFromProtocol(proto)];
    });
}

- (id)classForProtocol:(Protocol *)proto {
    if (!proto)
    {
        return nil;
    }
    
    __block Class class;
    dispatch_sync(_readwriteQueue, ^{
        class = self.mapDics[NSStringFromProtocol(proto)];
    });
    id classInstance = [[class alloc] init];
    return classInstance;
}

#pragma mark lazy propertys

- (NSMutableDictionary<NSString *,NSString *> *)mapDics {
    if (!_mapDics) {
        _mapDics = [NSMutableDictionary dictionary];
    }
    return _mapDics;
}
@end
