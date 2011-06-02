//
//  MyWindowController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CurrentApp, ActivityController, IconViewController;

@interface MyWindowController : NSWindowController {
  CurrentApp *app;
  IconViewController *ac;
}

@property IBOutlet CurrentApp *app;
@property IBOutlet IconViewController *ac;

@end
