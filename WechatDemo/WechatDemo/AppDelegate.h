//
//  AppDelegate.h
//  WechatDemo
//
//  Created by aaron on 16/3/27.
//  Copyright © 2016年 decai wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (AppDelegate *)getAppDelegate;
- (void)wechatLoginByRequestForUserInfo;

@end
