//
//  TestPlugin.h
//  TestCordova
//
//  Created by Doman on 2017/7/14.
//  Copyright © 2017年 Doman. All rights reserved.
//

#import "CDV.h"

@interface TestPlugin :CDVPlugin

- (void)scan:(CDVInvokedUrlCommand *)command;

- (void)location:(CDVInvokedUrlCommand *)command;

- (void)pay:(CDVInvokedUrlCommand *)command;

- (void)share:(CDVInvokedUrlCommand *)command;

- (void)changeColor:(CDVInvokedUrlCommand *)command;

- (void)testController:(CDVInvokedUrlCommand*)command;

@end
