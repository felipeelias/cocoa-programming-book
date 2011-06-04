//
//  PreferencesController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PreferencesController.h"


@implementation PreferencesController

@synthesize loadSavedRemovedAppsCheckbox, viewGroup;

- (IBAction) toggleLoadSavedRemovedAppsCheckbox: (id) sender {
  [[NSUserDefaults standardUserDefaults] setBool:[self.loadSavedRemovedAppsCheckbox state] forKey:@"LoadSavedRemovedApps"];
}

- (IBAction) chooseView: (id) sender {
  [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:[[sender selectedCell] tag]] forKey:@"TagForView"];
}

- (void) windowWillClose: (NSNotification *) notification {
  [self autorelease];
}

- (void) awakeFromNib {
  [self.loadSavedRemovedAppsCheckbox setState:[[NSUserDefaults standardUserDefaults] boolForKey:@"LoadSavedRemovedApps"]];
  [self.viewGroup selectCellWithTag:[[[NSUserDefaults standardUserDefaults] objectForKey:@"TagForView"] intValue]];
}

@end
