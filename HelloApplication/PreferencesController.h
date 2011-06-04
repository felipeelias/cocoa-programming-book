//
//  PreferencesController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PreferencesController : NSWindowController {
  NSButton *loadSavedRemovedAppsCheckbox;
}

@property IBOutlet NSButton *loadSavedRemovedAppsCheckbox;

- (IBAction) toggleLoadSavedRemovedAppsCheckbox: (id) sender;

@end
