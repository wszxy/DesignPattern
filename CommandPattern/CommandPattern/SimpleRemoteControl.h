//
//  SimpleRemoteControl.h
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/10.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CommandInterface;

@interface SimpleRemoteControl : NSObject

- (void)setOnCommand:(id<CommandInterface>)onCommand offCommand:(id<CommandInterface>)offCommand;

- (void)onButtonWasPressedAtIndex:(NSInteger)index;

- (void)offButtonWasPressedAtIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
