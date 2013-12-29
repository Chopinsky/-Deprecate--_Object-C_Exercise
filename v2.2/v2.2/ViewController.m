//
//  ViewController.m
//  v2.2
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//@synthesize textField = _textField;
//@synthesize button = _button;

// to clear textField after sending the alert message:
- (void)alerView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    // celar text field:
    self.textField.text = nil;
}

// creating the view with variables:
- (void)loadView
{
    // creat view:
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    // creat text field
    CGRect frame = CGRectMake(20, 20, 280, 30);
    self.textField = [[UITextField alloc] initWithFrame:frame];
    self.textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
    self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    self.textField.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    self.textField.placeholder = @"Name";
    self.textField.returnKeyType = UIReturnKeyGo;
    
    // listen for did end on exit:
    [self.textField addTarget:self action:@selector(go:) forControlEvents:UIControlEventEditingDidEndOnExit];
    
    // add text field to view:
    [self.view addSubview:self.textField];
    
    // create button:
    frame = CGRectMake(124, 59, 72, 37);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"Go" forState:UIControlStateNormal];
    
    // listen for touch up inside:
    [button addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    
    // add button to view:
    [self.view addSubview:button];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
