//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CurrentApp.h"


@implementation CurrentApp

@synthesize delegate;

-(void) applicationDidLaunch: (NSNotification *) notification {
	[[NSNotificationCenter defaultCenter] postNotificationName:@"Launch" object:self];
}

-(void) applicationDidTerminate: (NSNotification *) notification {
	[[NSNotificationCenter defaultCenter] postNotificationName:@"Terminated" object:self];
}

- (void) setUpNotification:(NSString *)notification withSelector:(SEL)methodName {
	[[[NSWorkspace sharedWorkspace] notificationCenter] addObserver:self 
														   selector:methodName 
															   name:notification 
															 object:nil];
}

- (void) registerNotifications {
	[self setUpNotification:NSWorkspaceDidLaunchApplicationNotification 
			   withSelector:@selector(applicationDidLaunch:)];
	[self setUpNotification:NSWorkspaceDidTerminateApplicationNotification 
			   withSelector:@selector(applicationDidTerminate:)];
}

- (id) init {
	if (self = [super init]) {
		[self registerNotifications];
	}
	return self;
}

@end
