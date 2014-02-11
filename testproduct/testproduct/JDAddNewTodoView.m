//
//  JDAddNewTodoView.m
//  testproduct
//
//  Created by Joshua Delrio on 2/11/2014.
//  Copyright (c) 2014 Joshua Delrio. All rights reserved.
//

#import "JDAddNewTodoView.h"

@implementation JDAddNewTodoView 
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor= [UIColor orangeColor];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 100.0f)];
        label.text = @"First subview";
        [self addSubview:label];
    }
    return self;
}

@end
