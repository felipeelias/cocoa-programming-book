//
//  Greeter.m
//  HelloWorld
//
//  Created by Felipe Elias Philipp on 25/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Greeter.h"


@implementation Greeter

-(NSString *) greeting {
	return [[NSString alloc] initWithFormat:@"Hello %@!", name];
}

-(NSString *) description {
	return [[NSString alloc] initWithFormat:@"name: %@ \n created: %@", name, [NSDate date]];
}

-(id) initWithName: (NSString *) newName {
	if (self = [super init]) {
		name = newName;
	}
	return self;
}

-(id) init {
	return [self initWithName:@"Worlds"];
}

@end
