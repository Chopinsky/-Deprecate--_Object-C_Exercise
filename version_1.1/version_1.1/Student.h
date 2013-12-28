//
//  Student.h
//  1
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    //int _age; // just to be distinguished from methods names defined below;
    //NSString *_name;
}

// w/ definition of @property()..., the declaration of Object and definition methods can be omitted.
@property (assign, nonatomic, readwrite) int age; // enable the usage of "." notation
@property (copy, nonatomic, readwrite) NSString *name;

// only needed for using constructor method:
- (id)initWithName:(NSString *)name andAge:(int)age;
- (void)greet;

//- (int)age;
//- (void)setAge:(int)age;

//- (NSString *)name;
//- (void)setName: (NSString *)name;

@end
