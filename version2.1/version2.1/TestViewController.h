//
//  TestViewController.h
//  version2.1
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController //<UIAlertViewDelegate> // to commit to use the UIAlertViewDelegate to conduct background operations.

@property (weak, nonatomic, readwrite) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (void)alerView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;
- (IBAction)go:(id)sender; //event handler

@end
