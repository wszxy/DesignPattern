//
//  SimpleRemoteControl.m
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/10.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import "SimpleRemoteControl.h"
#import "Command/CommandInterface.h"

@interface SimpleRemoteControl()

@property (nonatomic, strong) NSMutableArray <id <CommandInterface>> *onCommands;
@property (nonatomic, strong) NSMutableArray <id <CommandInterface>> *offCommands;

@end

@implementation SimpleRemoteControl

- (instancetype)init {
    self = [super init];
    if (self) {
        _onCommands = [[NSMutableArray alloc] init];
        _offCommands = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setOnCommand:(id<CommandInterface>)onCommand
          offCommand:(id<CommandInterface>)offCommand {
    [_onCommands addObject:onCommand];
    [_offCommands addObject:offCommand];
}


- (void)onButtonWasPressedAtIndex:(NSInteger)index {
    if ([_onCommands[index] respondsToSelector:@selector(execute)]) {
        [_onCommands[index] execute];
    }
}

- (void)offButtonWasPressedAtIndex:(NSInteger)index {
    if ([_offCommands[index] respondsToSelector:@selector(execute)]) {
        [_offCommands[index] execute];
    }
}

@end
