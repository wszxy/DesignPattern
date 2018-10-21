//
//  ViewController.m
//  CommandPattern
//
//  Created by zengxiangyi on 2018/10/9.
//  Copyright © 2018年 zengxiangyi. All rights reserved.
//

#import "ViewController.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "DoorOpenCommand.h"
#import "DoorCloseCommand.h"
#import "Light.h"
#import "Door.h"
#import "SimpleRemoteControl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Light *light = [Light new];
    Door *door = [Door new];
    
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWithLight:light];
    LightOffCommand *lightOffCommand = [[LightOffCommand alloc] initWithLight:light];
    
    DoorOpenCommand *doorOpenCommand = [[DoorOpenCommand alloc] initWithDoor:door];
    DoorCloseCommand *doorCloseCommand = [[DoorCloseCommand alloc] initWithDoor:door];
    
    SimpleRemoteControl *control = [SimpleRemoteControl new];
    [control setOnCommand:lightOnCommand offCommand:lightOffCommand];
    [control setOnCommand:doorOpenCommand offCommand:doorCloseCommand];
    
    [control onButtonWasPressedAtIndex:0];
    [control offButtonWasPressedAtIndex:0];
    [control onButtonWasPressedAtIndex:1];
    [control offButtonWasPressedAtIndex:1];
}


@end
