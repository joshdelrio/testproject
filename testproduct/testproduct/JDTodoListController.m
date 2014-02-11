//
//  JDTodoListController.m
//  testproduct
//
//  Created by Joshua Delrio on 2/11/2014.
//  Copyright (c) 2014 Joshua Delrio. All rights reserved.
//

#import "JDTodoItem.h"
#import "JDTodoListController.h"
#import "JDAddNewTodoController.h"

@implementation JDTodoListController
{
NSMutableArray *_todoItems;

}
- (id) init
{
    self = [super init];
    if (self){
        [self setTitle:@"JD Test"];
        _todoItems = [[NSMutableArray alloc] init];
        UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addPressed:)];
        [self.navigationItem setRightBarButtonItem:button];
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
        //show nothing
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    JDTodoItem *todoItem = _todoItems[indexPath. row];
    todoItem.completed = !todoItem.completed;
    //NSLog(@"Row: %d - Completed: %d", indexPath.row, todoItem.completed);
    
    //This reloads the whole table: [tableView reloadData];
    //This reloads only the cell updated
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:(UITableViewRowAnimationAutomatic)];
}
- (void) loadView
{
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = self;
    tableView.delegate = self;
    self.view = tableView;

}
- (void) addPressed:(id)sender
{
    JDAddNewTodoController *controller = [[JDAddNewTodoController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
    
}
@end

