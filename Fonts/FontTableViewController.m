//
//  FontTableViewController.m
//  Fonts
//
//  Created by Ben Chatelain on 10/4/14.
//  Copyright (c) 2014 phatblat. All rights reserved.
//

#import "FontTableViewController.h"

@interface FontTableViewController ()

@property (strong, nonatomic) NSMutableArray *fontNames;

@end

@implementation FontTableViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *fontFamilyNames = [[UIFont familyNames] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    self.fontNames = [[NSMutableArray alloc] init];
    for (NSString *fontFamilyName in fontFamilyNames) {
        [self.fontNames addObjectsFromArray:[UIFont fontNamesForFamilyName:fontFamilyName]];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fontNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    NSString *fontName = self.fontNames[indexPath.row];
    cell.textLabel.text = fontName;
    UIFont *font = [UIFont fontWithName:fontName size:14];
    cell.textLabel.font = font;

    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
