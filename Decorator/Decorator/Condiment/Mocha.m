//
//  Mocha.m
//  Decorator
//
//  Created by zengxiangyi on 11/4/18.
//  Copyright © 2018 zengxiangyi. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

- (double)cost {
    return [self.beverage cost] + 0.20f;
}

- (NSString *)getDescription {
    return [[self.beverage getDescription] stringByAppendingString:@", Mocha"];
}

@end
