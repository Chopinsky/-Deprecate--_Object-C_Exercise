//
//  Card_GameViewController.m
//  CardGame
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "Card_GameViewController.h"

@interface Card_GameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLables;
@property (nonatomic) int flipCount;

@end

@implementation Card_GameViewController

- (void)sefFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLables.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    NSString *randomCard = [NSString stringWithFormat:@"%d%@", arc4random() % 13, @"Heart"]; // can use NSStringAppendingByIndex:arc4random%4 to define the suit.
    NSLog(randomCard);
    
    // when title is nil, then just display the cardback image; otherwise display the card rank+suit values. The values are randomly chosen by the declaration above.
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"white"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:randomCard forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
