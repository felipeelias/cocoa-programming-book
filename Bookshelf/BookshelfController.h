//
//  BookshelfController.h
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class PragBook;

@interface BookshelfController : NSViewController {
  PragBook *book;
}

@property PragBook *book;

- (void) createReport;

@end
