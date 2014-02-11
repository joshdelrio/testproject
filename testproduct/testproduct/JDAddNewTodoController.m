//
//  JDAddNewTodoController.m
//  testproduct
//
//  Created by Joshua Delrio on 2/11/2014.
//  Copyright (c) 2014 Joshua Delrio. All rights reserved.
//

#import "JDAddNewTodoController.h"
#import "JDAddNewTodoView.h"

@implementation JDAddNewTodoController

- (void) loadView
{
    self.view = [[JDAddNewTodoView alloc] init];
}

@end
