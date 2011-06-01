//
//  MobileBrowserAppDelegate.h
//  MobileBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MobileBrowserViewController;

@interface MobileBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MobileBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MobileBrowserViewController *viewController;

@end

