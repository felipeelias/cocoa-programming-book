//
//  Chapter.h
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Chapter : NSObject {
  NSString *title;
  NSNumber *pageCount;
}

@property (copy) NSString *title;
@property (copy) NSNumber *pageCount;

@end
