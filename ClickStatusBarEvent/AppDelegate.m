//
//  AppDelegate.m
//  ClickStatusBarEvent
//
//  Created by Hank on 2020/11/5.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *viewVC = [[ViewController alloc] init];
    self.window.rootViewController = viewVC;
    [self.window makeKeyAndVisible];
    return YES;
}

///iOS13以下用来监听店家状态栏的方法
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    CGPoint location = [[[event allTouches] anyObject] locationInView:self.window];
    CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
    if (CGRectContainsPoint(statusBarFrame, location)) {
        NSLog(@"iOS13以下用来监听店家状态栏的方法");
    }
}

@end
