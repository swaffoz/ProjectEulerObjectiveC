//
//  main.m
//  Project Euler
//
//  Created by Zane Swafford on 9/6/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solvable.h"
#import "Problems.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* problems = @[[Problem1 class]];
        
        for (int i = 0; i < problems.count; i++) {
            NSDate *start = [[NSDate alloc] init];
            NSObject<Solvable> *problem = [[problems[i] alloc] init];
            NSNumber *result = [problem solve];
            NSTimeInterval duration = [[[NSDate alloc] init] timeIntervalSinceDate:start];
            
            NSLog(@"Problem %d: %@\t Found in %f seconds", i+1, result, duration);
        }
    }
    return 0;
}
