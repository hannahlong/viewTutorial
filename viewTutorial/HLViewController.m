//
//  HLViewController.m
//  viewTutorial
//
//  Created by Hannah Long on 9/10/14.
//  Copyright (c) 2014 Hannah Long. All rights reserved.
//

#import "HLViewController.h"
#import "HLGrid.h"

@interface HLViewController () {
    UIView* _gridView;
    UIButton* _button;
}

@end

@implementation HLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    // create grid view
    _gridView = [[HLGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    // create button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0,0,buttonSize,buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    _button.showsTouchWhenHighlighted = true;
    [_gridView addSubview:_button];
    [_button setTitle:@"Hit me" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    
    // create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You pressed the button!");
}

@end
