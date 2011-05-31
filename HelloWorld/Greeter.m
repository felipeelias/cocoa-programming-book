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
	return [[NSString alloc] initWithFormat:@"Hello %@!", [self name]];
}

-(NSString *) description {
	return [[NSString alloc] initWithFormat:@"name: %@ \n created: %@", [self name], [NSDate date]];
}

-(id) initWithName: (NSString *) newName {
	if (self = [super init]) {
		[self setName: newName];
	}
	return self;
}

-(id) init {
	return [self initWithName:@"Worlds"];
}

-(NSString *) name {
	return name;
}

-(void) setName:(NSString *) newName {
	name = newName;
}

@end
