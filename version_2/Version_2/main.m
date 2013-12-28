//
//  main.m
//  Version_2
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // allocate array for names-->convenient initialization, lazy way and ignore the allocate calling. There are 2 items in this name array.
        NSArray *names = [NSArray arrayWithObjects: @"Alice", @"Bob", nil]; // return a pointer, which comprise the address to each item in this array. Similar to <iterable> data type of Java.
        
        for (NSString *name in names)  // using *name, is to declear this variable is a string type, and names is a string-array type. In Object-C, the string is stored as the array of characters, which is very similar to C, and therefore the returned data type is the pointer to the first character of the string array, instead an instance variable name that represents the string name.
        {
            NSLog(@"Hello, %@.", name);  // %i: signed integer; %d: unsigned integer; %@: string. Here the NSLog function take the pointer, same for other data types. 
        }
    }
    return 0;
}

