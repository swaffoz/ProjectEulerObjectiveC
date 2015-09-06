//
//  ProjectEulerTests.m
//  ProjectEulerTests
//
//  Created by Zane Swafford on 9/6/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Problem1.h"

@interface Problem1Tests : XCTestCase

@end

@implementation Problem1Tests

- (void)testProblem1Correct {
    Problem1* problem = [[Problem1 alloc] init];
    XCTAssert([[problem solve] isEqualToNumber:@233168], @"Problem 1 should equal 233168");
}

- (void)testProblem1Performance {
    Problem1* problem = [[Problem1 alloc] init];
    
    [self measureBlock:^{
        [problem solve];
    }];
}

@end