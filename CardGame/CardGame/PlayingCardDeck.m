//
//  PlayingCardDeck.m
//  Cards
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init // initialization method. can only happen once.
{
    self = [super init]; // if it can't be initialized, will return a nil, this is a warning and stop execuating the later programs.
    
    if (self) {   // equivalent to if (self = [super init]). Standard initilization method.
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card]; // add the card to the self. Generating all the cards.
            }
        }
    }
    
    return self; // same type as the object that calls this method is.
}

@end
