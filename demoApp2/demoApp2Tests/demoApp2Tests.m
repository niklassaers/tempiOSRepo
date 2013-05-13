//
//  demoApp2Tests.m
//  demoApp2Tests
//
//  Created by Niklas Saers on 5/13/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import "demoApp2Tests.h"
#import "NJSActor.h"

@implementation demoApp2Tests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testActor
{
    NJSActor *johnDoe = [NJSActor defaultActor];
    johnDoe.yearOfBirth = @1951;

    NJSActor *kBacon = [NJSActor actorWithName:@"Kevin with Bacon" andYearOfBirth:1949];
    kBacon.name = @"Yum yum";
    
    NJSActor *noActor = nil;
    noActor.name = @"Who am I?";
    
}

@end
