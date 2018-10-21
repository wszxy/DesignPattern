//
//  LightCommand.m
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/9.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"

@interface LightOnCommand() 

@property (nonatomic, strong) Light *light;

@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light {
    self = [super init];
    
    if (self) {
        _light = light;
    }
    
    return self;
}

//MARK: CommandInterface

- (void)execute {
    [_light on];
}

@end
