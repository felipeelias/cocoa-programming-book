//
//  ActivityController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@interface ActivityController : NSObject <ActivityMonitorDelegate> {
	NSTextField *activityDisplay;
  NSImageView *imageViewer;
}

@property IBOutlet NSTextField *activityDisplay;
@property IBOutlet NSImageView *imageViewer;

@end
