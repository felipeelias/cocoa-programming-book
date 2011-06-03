//
//  MyWindowController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@class CurrentApp;

@interface MyWindowController : NSWindowController {
  CurrentApp *app;
  NSViewController <ActivityMonitorDelegate> *ac;
}

@property IBOutlet CurrentApp *app;
@property IBOutlet NSViewController <ActivityMonitorDelegate> *ac;

@end
