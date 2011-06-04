
//
//  PragBook.h
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PragBook : NSObject {
  NSString *title;
  NSString *author;
}

@property (copy) NSString *title, *author;

@end
