//
//  Greeter.m
//  HelloWorld
//
//  Created by Felipe Elias Philipp on 25/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Greeter.h"


@implementation Greeter

@synthesize name, age, today, upperCase;

-(NSString *) greeting {
	return [NSString stringWithFormat:@"Hello %@!", self.name];
}

-(id) initWithName: (NSString *) newName {
	if (self = [super init]) {
		self.name = newName;
		self.upperCase = YES;
		self.today = [NSDate date];
	}
	return self;
}

-(id) init {
	return [self initWithName:@"Worlds"];
}

-(NSString *) description {
	return [NSString stringWithFormat:@"name: %@ \n created: %@", self.name, self.today];
}

-(void) dealloc {
	self.name = nil;
	self.today = nil;
	[super dealloc];
}

@end
