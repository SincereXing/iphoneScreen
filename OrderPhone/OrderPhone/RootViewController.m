//
//  RootViewController.m
//  OrderPhone
//
//  Created by 汪兴 on 12-11-6.
//  Copyright (c) 2012年 汪兴. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (!iPhone5) {
        [_topView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_centerView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_bottomView setTranslatesAutoresizingMaskIntoConstraints:NO];
        NSDictionary *views = NSDictionaryOfVariableBindings(_topView, _centerView, _bottomView);
        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[_topView(100)][_centerView(232)]|" options:0 metrics:nil views:views]];
        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-352-[_bottomView(128)]|" options:0 metrics:nil views:views]];
        [_testScroll setFrame:CGRectMake(0, 0, 320, 232)];
    }
    [_testScroll setContentSize:CGSizeMake(320, 500)];
    UILabel *label1 = [[UILabel alloc]init];
    [label1 setFrame:CGRectMake(0, 0, 50, 50)];
    label1.text = @"test";
    [label1 setTextColor:[UIColor blackColor]];
    [_testScroll addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]init];
    [label2 setFrame:CGRectMake(50, 50, 50, 50)];
    label2.text = @"test2";
    [label2 setTextColor:[UIColor blackColor]];
    [_testScroll addSubview:label2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_topView release];
    [_centerView release];
    [_bottomView release];
    [_testScroll release];
    [super dealloc];
}
@end
