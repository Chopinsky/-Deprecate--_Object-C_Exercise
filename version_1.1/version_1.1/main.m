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
        
        //mutable array doesn't limit the size for the array, therefore more flexible when the final size of the array is not clear at the beginning of the app:
        NSMutableArray *students = [NSMutableArray array]; // doesn't allocate memo for this array at this point. Will dynamically add size to this array as objects are added.
        
        Student *alice = [Student studentWithName:@"Alice" andAge:20]; // initialize the object alice under the "Student" struct, and using convenient way to allocate memo for this object.
        [students addObject:alice]; // add "alice" to the array.
       
        Student *bob = [Student studentWithName:@"Bob" andAge:21];
        [students addObject:bob];

        for(Student *student in students)
        {
            NSLog(@"Hello, %@.", [student name]);
        }
    }
    return 0;
}

