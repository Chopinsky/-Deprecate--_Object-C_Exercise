//
//  Deck.h
//  Cards
//
//  Created by Ziwei Zuo on 13-12-27.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop; // takes two parameters: Object card, and Boolean atTop.
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
