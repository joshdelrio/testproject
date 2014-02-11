//
//  JDAppDelegate.m
//  testproduct
//
//  Created by Joshua Delrio on 2/11/2014.
//  Copyright (c) 2014 Joshua Delrio. All rights reserved.
//

#import "JDAppDelegate.h"
#import "JDTodoListController.h"

@implementation JDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    JDTodoListController *todoListController = [[JDTodoListController alloc] init];
    [self.window setRootViewController:(todoListController)];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
