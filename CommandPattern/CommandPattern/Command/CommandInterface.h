//
//  CommandInterface.h
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/13.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CommandInterface <NSObject>

@required

- (void)execute;

@end

NS_ASSUME_NONNULL_END
