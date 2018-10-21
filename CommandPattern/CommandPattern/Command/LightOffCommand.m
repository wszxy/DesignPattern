//
//  LightOffCommand.m
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/21.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@interface LightOffCommand()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOffCommand

- (instancetype)initWithLight:(Light *)light {
    self = [super init];
    
    if (self) {
        _light = light;
    }
    
    return self;
}

//MARK: CommandInterface

- (void)execute {
    [_light off];
}

@end
