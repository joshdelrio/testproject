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
{
NSArray *_todoItems;

}
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
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"jd-todo-item-cell"];
    
    }
    JDTodoItem *todoItem = _todoItems[indexPath.row];
    cell.textLabel.text = [todoItem title];
    
    if(todoItem.completed){
        //show checkmark
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else{
        cell.accessoryType = UITableViewCellAccessoryNone;
        //show nothing
    }

    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    JDTodoItem *todoItem = _todoItems[indexPath. row];
    
    if(todoItem.completed){
        todoItem.completed = NO;
    }
    else if(![todoItem completed]){
        todoItem.completed = YES;
        
    }
    else{
        NSLog(@"Error Occurred.");
    }
    NSLog(@"Row: %d - Completed: %d", indexPath.row, todoItem.completed);
    [tableView reloadData];
}
- (void) loadView
{
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = self;
    tableView.delegate = self;
    self.view = tableView;

}

@end

