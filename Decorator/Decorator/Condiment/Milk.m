//
//  Milk.m
//  Decorator
//
//  Created by zengxiangyi on 11/4/18.
//  Copyright © 2018 zengxiangyi. All rights reserved.
//

#import "Milk.h"

@implementation Milk

- (double)cost {
    return [self.beverage cost] + 0.10f;
}

- (NSString *)getDescription {
    return [[self.beverage getDescription] stringByAppendingString:@", Milk"];
}

@end
