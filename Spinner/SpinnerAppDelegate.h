//
//  SpinnerAppDelegate.h
//  Spinner
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpinnerAppDelegate : NSObject <NSApplicationDelegate> {
  NSWindow *window;
  NSOperationQueue *queue;
}

@property (assign) IBOutlet NSWindow *window;
-(IBAction)toggleIsSuspended:(id)sender;
-(IBAction)cancelAllOperations:(id)sender;
-(IBAction)queueStatus:(id)sender;
@end
