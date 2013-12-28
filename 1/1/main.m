//
//  test_main.m
//  1
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

void greet(Student *s);

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        //Student *alice = [Student alloc];
        //[alice setAge: 20];
        //[alice setName: @"Alice"];
        //alice.age = 20; // same functionality as instance declaration methods above.
        //alice.name = @"Alice";
        
        // final version using constructors can be expressed as:
        Student *alice = [[Student alloc] initWithName:@"Alice" andAge:20];
        greet(alice);
        
        //Student *bob = [Student alloc];
        //[bob setAge: 21];
        //[bob setName: @"Bob"];
        //bob.age = 21;
        //bob.name = @"David";
        
        Student *bob = [[Student alloc] initWithName:@"Bob" andAge:21];
        greet(bob);
        
        Student *Joe = [[Student alloc] init];
        greet(Joe);
        
        //using mutable array methods to initialize data:
        NSMutableArray *students = [[NSMutableArray alloc] init];
        
        [students addObject:[[Student alloc] initWithName:@"Leah" andAge:20]];
        [students addObject:[[Student alloc] initWithName:@"Jason" andAge:22]];
        
        for(Student *s in students)
            greet(s);
    }
    return 0;
}


void greet(Student *s){
    NSLog(@"Hello, %@, who is %d years old. I greet you!\n", s.name, s.age); //[s name], [s age]);
}
