//
//  JDTodoListController.m
//  testproduct
//
//  Created by Joshua Delrio on 2/11/2014.
//  Copyright (c) 2014 Joshua Delrio. All rights reserved.
//

#import "JDTodoItem.h"
#import "JDTodoListController.h"

@implementation JDTodoListController
NSArray *_todoItems;
- (id) init
{
    self = [super init];
    if (self){
        JDTodoItem *itemOne = [[JDTodoItem alloc] init];
        itemOne.title = @"Test One";
        JDTodoItem *itemTwo = [[JDTodoItem alloc] init];
        itemTwo.title = @"Test Two";
        _todoItems = @[itemOne, itemTwo];
    }
    return self;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_todoItems count];
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"jd-todo-item-cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"jd-todo-tem-cell"]
    
    }
    
}
- (void) loadView
{
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = self;
    tableView.delegate = self;
    self.view = tableView;

}

@end
