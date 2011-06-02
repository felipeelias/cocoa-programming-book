//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"
#import "CurrentApp.h"

@implementation ActivityController

@synthesize currentApp, activityDisplay;

-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
  self.currentApp.delegate = self;
}

@end
