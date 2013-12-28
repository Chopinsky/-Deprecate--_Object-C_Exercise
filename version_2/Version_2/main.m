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
        NSArray *names = [NSArray arrayWithObjects:@"Alice", @"Bob", nil];
        
        for (NSString *name in names)
        {
            NSLog(@"Hello, %@.", name);
        }
    }
    return 0;
}

