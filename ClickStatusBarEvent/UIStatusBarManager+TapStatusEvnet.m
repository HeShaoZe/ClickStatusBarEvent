//
//  UIStatusBarManager+TapStatusEvnet.m
//  ClickStatusBarEvent
//
//  Created by Hank on 2020/11/5.
//

#import "UIStatusBarManager+TapStatusEvnet.h"
#import <objc/runtime.h>

@implementation UIStatusBarManager (TapStatusEvnet)

+ (void)load
{
    // 交换方法
    // 获取handleTapAction方法地址
    Method handleTapActionName = class_getInstanceMethod(self, @selector(handleTapAction:));

    // 获取handleTapActionOne方法地址
    Method handleTapActionOneName = class_getInstanceMethod(self, @selector(handleTapActionOne:));

    // 交换方法地址，相当于交换实现方式
    method_exchangeImplementations(handleTapActionName, handleTapActionOneName);
}

///获取到点击状态栏的事件
- (void)handleTapActionOne:(id)arg1 {
    NSLog(@"iOS13.0后点击状态栏");
    //调系统点击状态栏的方法
    UIStatusBarManager *statusBarManager = [UIApplication sharedApplication].keyWindow.windowScene.statusBarManager;
    [statusBarManager handleTapActionOne:arg1];
}

@end
