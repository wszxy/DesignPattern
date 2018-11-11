//
//  ViewController.m
//  Decorator
//
//  Created by zengxiangyi on 10/30/18.
//  Copyright © 2018 zengxiangyi. All rights reserved.
//

#import "ViewController.h"
#import "DarkRoast.h"
#import "Espresso.h"
#import "Milk.h"
#import "Mocha.h"
#import <SafariServices/SafariServices.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Beverage *beverage = [[DarkRoast alloc] init];
    NSLog(@"%@", [beverage.getDescription stringByAppendingString:[NSString stringWithFormat:@" $%.2f", beverage.cost]]);
    
    beverage = [[Milk alloc] initWithBeverage:beverage];
    NSLog(@"%@", [beverage.getDescription stringByAppendingString:[NSString stringWithFormat:@" $%.2f", beverage.cost]]);

    beverage = [[Mocha alloc] initWithBeverage:beverage];
    NSLog(@"%@", [beverage.getDescription stringByAppendingString:[NSString stringWithFormat:@" $%.2f", beverage.cost]]);
}

- (void)a:(UIButton *)button {
    [UIView performWithoutAnimation:^{
        if ([button.titleLabel.text isEqualToString:@"hello"]) {
            [button setTitle:@"nice" forState:UIControlStateNormal];
        } else {
            [button setTitle:@"hello" forState:UIControlStateNormal];
        }
        NSLog(@"set!");
        [button layoutIfNeeded];
    }];
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    NSLog(@"%@", change);
    
}

@end
