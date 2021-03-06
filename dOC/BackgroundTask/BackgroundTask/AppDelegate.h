//
//  AppDelegate.h
//  BackgroundTask
//
//  Created by runo on 17/1/4.
//  Copyright © 2017年 com.runo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (copy) void (^backgroundSessionCompletionHandler)();

-(void)presentNotification:(NSString *)identifier;

@end

