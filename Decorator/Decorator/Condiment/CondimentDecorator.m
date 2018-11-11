//
//  CondimentDecorator.m
//  Decorator
//
//  Created by zengxiangyi on 11/4/18.
//  Copyright © 2018 zengxiangyi. All rights reserved.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator {
}

- (instancetype)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    
    if (self) {
        _beverage = beverage;
    }
    
    return self;
}


- (NSString *)getDescription {
    return @"unkown condimentDecorater!";
}

@end
