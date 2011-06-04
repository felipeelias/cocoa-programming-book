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
  NSMatrix *viewGroup;
}

@property IBOutlet NSButton *loadSavedRemovedAppsCheckbox;
@property IBOutlet NSMatrix *viewGroup;

- (IBAction) toggleLoadSavedRemovedAppsCheckbox: (id) sender;
- (IBAction) chooseView: (id) sender;

@end
