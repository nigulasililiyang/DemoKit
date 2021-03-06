//
//  AppDelegate.m
//  CQFramework
//
//  Created by runo on 16/10/28.
//  Copyright © 2016年 com.runo. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "CQDBOperator.h"
#import "testModel.h"
#import "HahaABC.h"
#import "NSDate+CQExtention.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    UINavigationController *nav =[[UINavigationController alloc]initWithRootViewController:[ViewController new]];
    self.window.rootViewController = nav;
    
    
    return YES;
}

-(void)testDBOperator{
    
    
       
}

-(void)changeRootController:(UIViewController *)vc Animate:(BOOL)animal{
    
    CATransition *transition = [CATransition animation];
    transition.duration = animal?10:0;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    //kCATransitionMoveIn;//kCATransitionFade;
    transition.subtype = kCATransitionFromRight;
    self.window.rootViewController = vc;
    [self.window.layer addAnimation:transition forKey:@"animation"];
    
}


-(void)changeRootController:(UIViewController *)vc FromVC:(UIViewController *)fromvc Animate:(BOOL)animal{
    
     [UIView transitionFromView:fromvc.view toView:vc.view duration:2 options:UIViewAnimationOptionTransitionFlipFromRight completion:^(BOOL finished) {
         self.window.rootViewController = vc;
     }];
    
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
