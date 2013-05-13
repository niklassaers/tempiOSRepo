//
//  NJSActor.h
//  demoApp2
//
//  Created by Niklas Saers on 5/13/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NJSActor : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSNumber *yearOfBirth;


- (id) initWithName:(NSString*) name andYearOfBirth:(NSNumber*) yearOfBirth;
+ (NJSActor*) defaultActor;
+ (NJSActor*) actorWithName:(NSString*) name andYearOfBirth:(int) yearOfBirth;

@end
