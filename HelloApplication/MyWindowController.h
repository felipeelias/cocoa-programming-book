//
//  MyWindowController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CurrentApp, ActivityController;

@interface MyWindowController : NSWindowController {
  CurrentApp *app;
  ActivityController *ac;
}

@property IBOutlet CurrentApp *app;
@property IBOutlet ActivityController *ac;

@end
