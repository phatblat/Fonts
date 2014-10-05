//
//  FontExampleViewController.m
//  Fonts
//
//  Created by Ben Chatelain on 10/4/14.
//  Copyright (c) 2014 phatblat. All rights reserved.
//

#import "FontExampleViewController.h"

@interface FontExampleViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation FontExampleViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIFont *font = [UIFont fontWithName:@"Apple Symbols" size:72];
    self.label.font = font;

    self.label.text = @"Apple Symbols ⚙⌘⎋⏎⏏⌤⌥⌃⌄⌅⌆⌀⌁⌂⌐⌑⌒⌓⌔⌕⌖⌗⌙⌦⌧⌫⌨⎄⎅⎆⎇⎈⎉⎊⎌⌚︎⌛︎⎗⎘⎙⎚⎀⎁⎂⎃⌇⌈⌉⌊⌋⌌⌍⌏⌠⎮⌡⌢⌣⌜⌝⌞⌟⁒〈〉⌬⏍⑃⑂⑁␦⑆⑇⑈⑉⑀⑊⏁⏄⎷⍭⍟⍠⍖⍕⍇⍈⍆⍝⍒⍐⍏⍎⍓⍠⎙⎃⎂⎁";
}

@end
