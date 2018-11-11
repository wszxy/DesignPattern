//
//  Beverage.h
//  Decorator
//
//  Created by zengxiangyi on 10/30/18.
//  Copyright © 2018 zengxiangyi. All rights reserved.
//

#import <Foundation/Foundation.h>

//抽象类

@interface Beverage : NSObject

- (NSString *)getDescription;

- (double)cost;

@end
