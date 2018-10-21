//
//  LightCommand.h
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/9.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN

@class Light;

@interface LightOnCommand : NSObject<CommandInterface>

- (instancetype)initWithLight:(Light *)light;

@end

NS_ASSUME_NONNULL_END
