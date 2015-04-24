//
//  sub01.m
//  CBridgeTest
//
//  Created by Kei on 2015/04/24.
//  Copyright (c) 2015年 systemsblue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CBridgeTest-Swift.h"
#import "sub01.h"

@implementation MyObjcClass

- (void) disp:(NSString*) str {
    NSLog(@"Objc : %@", str);
}

- (void) callSwift1 {
    MySwiftClass *my = [[MySwiftClass alloc] init];
    [my disp:@"NS String 1 / Objc"];
}

- (void) callSwift2 {
    MySwiftClass *my = [[MySwiftClass alloc] init];
    SEL method = @selector(disp:);
    [my performSelector: method withObject:@"NS String 2 / Objc"];
}

- (void) callSwift3 {
    MySwiftClass *my = [[MySwiftClass alloc] init];
    SEL method = @selector(disp:);
    IMP func = [my methodForSelector: method];
    
    // C Function
    ((void(*)(id, SEL, NSString*))func)(my, method, @"NS String 3 / Objc");
}


@end
