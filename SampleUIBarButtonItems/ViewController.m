//
//  ViewController.m
//  SampleUIBarButtonItems
//
//  Created by haruhatahiko on 2013/08/03.
//  Copyright (c) 2013年 haruhatahiko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self buildNavigationBar];
    [self buildRightBarButtonItems];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark NavigationBar

/**
 * ナビゲーションバー
 */
- (void)buildNavigationBar
{
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
}

#pragma mark -
#pragma mark rightBarButtonItems

/**
 * 右側のボタン
 */
- (void)buildRightBarButtonItems
{
    UIBarButtonItem *searchBtn = [[UIBarButtonItem alloc]
    initWithBarButtonSystemItem:UIBarButtonSystemItemSearch
    target:self
    action:@selector(eventSearchBtn:)];
    searchBtn.tintColor = [UIColor redColor];
    
    UIBarButtonItem *refreshBtn = [[UIBarButtonItem alloc]
    initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh
    target:self
    action:@selector(eventRefreshBtn:)];
    refreshBtn.tintColor = [UIColor redColor];
    
    self.navigationItem.rightBarButtonItems =
    [NSArray arrayWithObjects:searchBtn, refreshBtn, nil];
}

@end
