//
//  SpinnerOperation.h
//  Spinner
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface SpinnerOperation : NSOperation {
  NSProgressIndicator *spinner;
}
-(id) initWithSpinner:(NSProgressIndicator *)spinner;
@end
