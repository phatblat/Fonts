//
//  AppTabBarController.m
//  Fonts
//
//  Created by Ben Chatelain on 10/4/14.
//  Copyright (c) 2014 phatblat. All rights reserved.
//

#import "AppTabBarController.h"

@interface AppTabBarController ()

@end

@implementation AppTabBarController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    id vc = [self.storyboard instantiateViewControllerWithIdentifier:@"FontExampleViewController"];
    NSMutableArray *vcs = [self.viewControllers mutableCopy];
    [vcs addObject:vc];
    self.viewControllers = vcs;
}

@end
