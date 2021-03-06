//
//  AppDelegate.m
//  testWMPageController
//
//  Created by tarena1 on 2016/12/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "WMPageController.h"
#import "RedViewController.h"
#import "BlueViewController.h"
#import "PageController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//- (WMPageController *)p_defaultController {
//    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];
//    NSMutableArray *titles = [[NSMutableArray alloc] init];
//    for (int i = 0; i < 8; i++) {
//        Class vcClass;
//        NSString *title;
//        switch (i % 2) {
//            case 0:
//                vcClass = [RedViewController class];
//                title = @"Greetings";
//                break;
//            case 1:
//                vcClass = [BlueViewController class];
//                title = @"Hit Me";
//                break;
//        }
//        [viewControllers addObject:vcClass];
//        [titles addObject:title];
//    }
//    WMPageController *pageVC = [[WMPageController alloc] initWithViewControllerClasses:viewControllers andTheirTitles:titles];
//    pageVC.menuItemWidth = 85;
//    pageVC.postNotification = YES;
//    pageVC.bounces = YES;
//    //让菜单显示在导航栏上
//    pageVC.showOnNavigationBar = NO;
//    //vc.menuHeight = 250;
//    //设置菜单背景色
//    pageVC.menuBGColor = [UIColor clearColor];
//    //选中时的样式
//    pageVC.menuViewStyle = WMMenuViewStyleLine;
//    //更多的属性 自己查看头文件 因为都是中文提示
//    pageVC.preloadPolicy = WMPageControllerPreloadPolicyNeighbour;
//    return pageVC;
//}



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    _window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [_window makeKeyAndVisible];
    //WMPageController *vc = [self p_defaultController];
    PageController *vc = [PageController new];
    
    _window.rootViewController = [[UINavigationController alloc]initWithRootViewController:vc];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
