//
//  DoorOpenCommand.h
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/21.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN

@class Door;
@interface DoorOpenCommand : NSObject<CommandInterface>

- (instancetype)initWithDoor:(Door *)door;

@end

NS_ASSUME_NONNULL_END
