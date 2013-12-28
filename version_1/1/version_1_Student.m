//
//  Student.m
//  1
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "version_1_Student.h"

@implementation Student

// w/ implementation of @property(..)... methods, all the old methods defining below can be replaced by:

@synthesize age = _age; // _age and _name can be manipulated in the methods below. Their values are set as integers or strings when initialized in the main.m file. And age/name give the object variable names for the corresponding values.
@synthesize name = _name;

// below is only needed when using constructor declaration methods:

// default initialization, if no argument is given.
- (id)init   // "id" is the type of the data returned by the initilization method, which are values of the 
{
    self = [self initWithName:@"Joe" andAge:99]; // "self" is unique to "this" in Java, which calls the object itself. In this case, the
    return self;
}

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) // standard initialization methods, to make sure "self" object has been initialized, and ready to set values for it. 
    {
        self.age = age;
        self.name = name;
    }
    return self;
}

// more delicate manipulation of the getter and setter:
- (void)setName:(NSString *)name
{
    if ([name isEqualToString:@"Bob"]) {
        _name = [[NSString alloc] initWithString:@"Dummy"];
    } else {
        _name = [name copy];
    }
}

/*
- (int)age
{
    return _age;
}

- (void)setAge:(int)age
{
    _age = age;
}

- (NSString *)name
{
    return _name;
}

- (void)setName:(NSString *)name
{
    _name = [name copy]; // if copy a string, recommended to use [stringName copy];
}*/


@end
