//
//  ViewController.h
//  v2.2
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (void)alerView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;
- (IBAction)go:(id)sender; //event handler

@end
