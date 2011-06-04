
//
//  PragBook.h
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Chapter;

@interface PragBook : NSObject {
  NSString *title;
  NSString *author;
  NSArray *chapters;
}

@property (copy) NSString *title, *author;
@property (copy) NSArray *chapters;

@end
