//
//  Deck.m
//  Cards
//
//  Created by Ziwei Zuo on 13-12-27.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

// initialization of the mutable array cards, which will be used later in the value setting methods below.
- (NSMutableArray *)cards
{
    if (!_cards) {
        // "lazily" initialize the the array, so that the memory demands for the program is minimized until really needed. 
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        // if at the top of the deck, then need to add the card as the first object of the deck array. Therefore must insert, instead of "add" to the deck.
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card]; // self.cards == this.cards;
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO]; // calls the method w/ 2 parameters as defined prior to this one.
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count])  // if the cards deck is not empty, where cards.count != 0.
    {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];   // must use self.cards[index], as cards is defined in the instance outside of this method, therefore cards[index] is not defined.
        [self.cards removeObjectAtIndex:index];  // [...] bracket is a standard operation on the object, with defined operations such as insertObject, addObject, removeObjectAtIndex so on and so forth.
    }
    
    // if there is no cards in the deck, just return the nil to the card draws. 
    return randomCard;
}

@end
