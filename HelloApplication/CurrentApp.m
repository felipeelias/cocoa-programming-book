//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CurrentApp.h"


@implementation CurrentApp


-(void) reportActivity: (NSNotification *) notification {
	NSLog(@"%@", notification.name);
}

- (void) registerNotifications {
	NSNotificationCenter *defaultCenter = [[NSWorkspace sharedWorkspace] notificationCenter];
	
	[defaultCenter addObserver:self 
					  selector:@selector(reportActivity:) 
						  name:nil 
						object:nil];
}

- (id) init {
	if (self = [super init]) {
		[self registerNotifications];
	}
	return self;
}

@end
