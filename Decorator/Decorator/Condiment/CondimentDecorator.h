//
//  CondimentDecorator.h
//  Decorator
//  装饰器抽象类
//
//  Created by zengxiangyi on 11/4/18.
//  Copyright © 2018 zengxiangyi. All rights reserved.
//

#import "Beverage.h"

@interface CondimentDecorator : Beverage

@property (nonatomic, strong) Beverage *beverage;

- (instancetype)initWithBeverage:(Beverage *)beverage;

@end

