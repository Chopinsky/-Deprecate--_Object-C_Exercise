//
//  PlayingCard.m
//  Cards
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    // format the contents string, where the color and number of the card is stored.
    // contents is introduced in Card.h, but only defined here.
    //return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    
    // another way of doing this is using NSArray, since the number of cards is between 1 to 13, which is small in number and finite.
    NSArray *rankStrings = [PlayingCard rankStrings]; // the array of strings.
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // as permitted in PlayCard.h, where suit is defined with @property.

+ (NSArray *)validSuits // create a method that's only useable for the class, instead for the entire instance, more like a private method?
{
    return @[@"heart", @"square", @"blade", @"flower"];
}

- (void)setSuit:(NSString *)suit  // setter for the 'suit' object
{
    // only accept input of chosen types. Otherwise _suit will not be defined.
    // the @[...] creat a new array, which is similar to enumarate initialization of an array in Java. Otherwise, [...] is only an object operation syntex, as used in the outmost bracket below:
    if ([[PlayingCard validSuits] containsObject:suit]) {  // calling method validSuits under class PlayingCard.
        _suit = suit;
    }
}

- (NSString *)suit // initializing the object NSString *suit
{
    // this is very similar to the definition: @synthesis suit = _suit, as in <version_a/Student.m>
    return _suit ? _suit : @"?";  // if _suit is defined, then just return its value to suit; otherwise, return @"?", which is matching w/ the @"?" rank for this card.
}

// similarly, we can do the same for the rank class:
+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
