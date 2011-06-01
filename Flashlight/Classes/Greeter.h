//
//  Greeter.h
//  HelloWorld
//
//  Created by Felipe Elias Philipp on 25/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Greeter : NSObject {
	NSString *name;
	NSInteger age;
	NSDate *today;
	BOOL upperCase;
}

-(NSString *) greeting;
-(id) initWithName:(NSString *)name;

+(id) greeterWithName: (NSString *) newName;

@property (copy) NSString *name;
@property (assign, readonly) NSInteger age;
@property (copy) NSDate *today;
@property (assign, getter=isUppperCase) BOOL upperCase;

@end
