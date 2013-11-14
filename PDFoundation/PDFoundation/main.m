//
//  main.m
//  PDFoundation
//
//  Created by xeonwell on 13-11-14.
//  Copyright (c) 2013年 XeonWellStudio, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LXFoundation.h"
#import "PDMutableArray.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");

        PDMutableArray *array = [PDMutableArray arrayWithCapacity:0 Type:[NSNumber class]];
        for (int i=0; i<10; i++) {
            [array addObject:@(i)];
        }
        [array addObject:@"asdf"];
        [array insertObject:@(100) atIndex:1];
        [array insertObject:@"qwer" atIndex:2];
        [array replaceObjectAtIndex:3 withObject:@"kj"];
        [array replaceObjectAtIndex:4 withObject:@(777)];
        array[6] = @(888);
        array[7] = @"poiu";
        NSLog(@"count = %ld", array.count);
        NSLog(@"array = %@", array);
        NSLog(@"array[5] = %@", array[5]);


        
    }
    return 0;
}

