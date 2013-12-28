//
//  Card.m
//  Cards
//
//  Created by Ziwei Zuo on 13-12-27.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match: (NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString: self.contents])
        {
            score = 1;
        }
    }
    
    return score;
}

@end
