//
//  ActivityController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@class CurrentApp;

@interface ActivityController : NSObject <ActivityMonitorDelegate> {
	CurrentApp *currentApp;
	NSTextField *activityDisplay;
}

@property CurrentApp *currentApp;
@property IBOutlet NSTextField *activityDisplay;

@end
