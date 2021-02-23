//
//  LoginModel.h
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginModel : NSObject

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, strong) id data;

@end

NS_ASSUME_NONNULL_END
