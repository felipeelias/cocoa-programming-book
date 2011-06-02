//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CurrentApp.h"


@implementation CurrentApp

@synthesize delegate, name;

#pragma mark Utility methods

-(void) respondToChange: (NSNotification *) notification {
  SEL methodName;
  if (notification.name == NSWorkspaceDidLaunchApplicationNotification) {
    methodName = @selector(applicationDidLaunch:);
  } else {
    methodName = @selector(applicationDidTerminate:);
  }
  if ([self.delegate respondsToSelector:methodName]) {
    self.name = [notification.userInfo objectForKey:@"NSApplicationName"];
    [self.delegate performSelector:methodName withObject:self];
  }
}

#pragma mark Notification methods

-(void) applicationDidLaunch: (NSNotification *) notification {
  [self respondToChange:notification];
}

-(void) applicationDidTerminate: (NSNotification *) notification {
  [self respondToChange:notification];
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

#pragma mark Initialisation

- (id) init {
	if (self = [super init]) {
		[self registerNotifications];
	}
	return self;
}

@end
