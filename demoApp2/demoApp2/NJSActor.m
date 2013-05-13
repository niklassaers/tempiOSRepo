//
//  NJSActor.m
//  demoApp2
//
//  Created by Niklas Saers on 5/13/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import "NJSActor.h"

@implementation NJSActor

- (id) initWithName:(NSString*) name andYearOfBirth:(NSNumber*) yearOfBirth {
    self = [super init];
    if(self != nil) {
        self.name = name;
        self.yearOfBirth = yearOfBirth;
    }
    
    return self;
}

+ (NJSActor*) actorWithName:(NSString*) name andYearOfBirth:(int) yearOfBirth {
    return [[NJSActor alloc] initWithName:name andYearOfBirth:@(yearOfBirth)];
}

+ (NJSActor*) defaultActor {
    return [[NJSActor alloc] initWithName:@"John Doe" andYearOfBirth:@1950];
}

@end
