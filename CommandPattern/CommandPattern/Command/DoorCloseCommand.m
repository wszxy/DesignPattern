//
//  DoorCloseCommand.m
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/21.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import "DoorCloseCommand.h"
#import "Door.h"

@interface DoorCloseCommand()

@property (nonatomic, strong) Door *door;

@end

@implementation DoorCloseCommand

- (instancetype)initWithDoor:(Door *)door {
    self = [super init];
    
    if (self) {
        _door = door;
    }
    
    return self;
}

- (void)execute {
    [_door close];
}

@end
