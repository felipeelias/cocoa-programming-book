//
//  BookshelfController.m
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BookshelfController.h"
#import "PragBook.h"

@implementation BookshelfController

@synthesize valueField, book;

- (IBAction) getValue: (id) sender {
  [self.valueField setStringValue:[self.book valueForKey:[sender stringValue]]];
}

- (PragBook *) book {
  if (!book) {
    self.book = [[PragBook alloc] init];
    self.book.title = @"Manage Your Project Portifolio";
    self.book.author = @"Johanna Rothman";
  }
  return book;
}

@end
