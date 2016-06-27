//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISStudent.h"

@interface FISTableViewController ()

@property (nonatomic, strong) NSArray *students;
@property (nonatomic, strong) NSArray *favorites;

@end

@implementation FISTableViewController

#pragma mark - Table

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSInteger count = (NSInteger)self.students.count;
    return count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger count = (NSInteger)self.favorites.count;
    return count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSUInteger index = (NSUInteger)section;
    FISStudent *student = self.students[index];
    return student.name;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"expandingCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    NSUInteger sectionIndex = (NSUInteger)indexPath.section;
    NSUInteger rowIndex = (NSUInteger)indexPath.row;
    
    FISStudent *student = self.students[sectionIndex];
    
    cell.textLabel.text = self.favorites[rowIndex];
    cell.detailTextLabel.text = student.favoriteThings[rowIndex];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Friends";
    self.favorites = @[@"Food", @"Color", @"Artist", @"Game"];
    
    FISStudent *ryan = [[FISStudent alloc] initWithName:@"Ryan"
                                                   food:@"sushi"
                                                  color:@"white"
                                                 artist:@"Mac Miller"
                                                   game:@"Minecraft"];
    
    FISStudent *haaris = [[FISStudent alloc] initWithName:@"Haaris"
                                                   food:@"chicken"
                                                  color:@"blue"
                                                 artist:@"Bonobo"
                                                   game:@"Sims"];
    
    FISStudent *joel = [[FISStudent alloc] initWithName:@"Joel"
                                                   food:@"steal"
                                                  color:@"black"
                                                 artist:@"Nickleback"
                                                   game:@"Call of Duty"];
    
    self.students = @[ryan, haaris, joel];
}

@end
