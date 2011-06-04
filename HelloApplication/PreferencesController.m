//
//  PreferencesController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PreferencesController.h"


@implementation PreferencesController

@synthesize loadSavedRemovedAppsCheckbox;

- (IBAction) toggleLoadSavedRemovedAppsCheckbox: (id) sender {
  [[NSUserDefaults standardUserDefaults] setBool:[self.loadSavedRemovedAppsCheckbox state] forKey:@"LoadSavedRemovedApps"];
}

- (void) awakeFromNib {
  [self.loadSavedRemovedAppsCheckbox setState:[[NSUserDefaults standardUserDefaults] boolForKey:@"LoadSavedRemovedApps"]];
}

@end
