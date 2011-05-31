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

-(id) init {
	if (self = [super init]) {
		name = @"Worlds";
	}
	return self;
}

@end
