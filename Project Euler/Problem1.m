//
//  Problem1.m
//  Project Euler
//
//  Created by Zane Swafford on 9/6/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

#import "Problem1.h"

@implementation Problem1

-(NSNumber*) solve {
    int sum = 0;
    for (int i = 0; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    
    return [NSNumber numberWithInt:sum];
}

@end