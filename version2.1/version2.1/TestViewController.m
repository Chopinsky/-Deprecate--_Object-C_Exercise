//
//  TestViewController.m
//  version2.1
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

@synthesize button = _button;
@synthesize textField = _textField;
@synthesize lastNameField = _lastNameField;

// to clear textField after sending the alert message:
- (void)alerView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    // celar text field:
    self.textField.text = nil;
    self.lastNameField.text = nil;
}


- (IBAction)go:(id)sender
{
    [self.textField resignFirstResponder];
    
    NSString *name = [self.textField.text stringByAppendingString:self.lastNameField.text];
    NSLog(@"Name Updated:%@", name);
    
    NSString *s = [NSString stringWithFormat:@"Hello, %@!", name];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Greetings from the Developer!" message:s delegate:nil cancelButtonTitle:@"Thanks!" otherButtonTitles:nil]; // delegate set to self, so that the code will be able to run in the background even if the alert message is not dismissed.
    
    [alert show];
    NSLog(@"Name Updated:%@", s);
    
    self.textField.text = nil; // clear the text filed text once the alert shows.
    self.lastNameField.text = nil;
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
