//
//  Card_GameViewController.m
//  CardGame
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "Card_GameViewController.h"

@interface Card_GameViewController ()

@end

@implementation Card_GameViewController


- (IBAction)touchCardButton:(UIButton *)sender
{
    NSString *randomCard = [NSString stringWithFormat:@"%d%@", arc4random() % 13, @"Heart"];
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"white"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:randomCard forState:UIControlStateNormal];
    }
    
    
}

@end
