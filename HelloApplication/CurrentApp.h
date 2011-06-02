//
//  CurrentApp.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@interface CurrentApp : NSObject {
  NSObject <ActivityMonitorDelegate> *delegate;
}

@property IBOutlet NSObject <ActivityMonitorDelegate> *delegate;

@end
