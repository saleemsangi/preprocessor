//
//  ViewController.m
//  Preprocessor
//
//  Created by Saleem Sangi on 4/9/13.
//  Copyright (c) 2013 Ignas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
#ifdef DEBUG
    // Hide ad banners
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Debug" message:@"Check title" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
#else
    // Show ad banners
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Release" message:@"Check title" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
#endif
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
