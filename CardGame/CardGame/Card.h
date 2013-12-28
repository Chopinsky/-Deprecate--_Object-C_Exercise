//
//  Card.h
//  Cards
//
//  Created by Ziwei Zuo on 13-12-27.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match: (NSArray *)otherCards;

@end
