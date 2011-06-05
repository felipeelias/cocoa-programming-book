//
//  NSSet+Persistence.h
//  Bounce
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface NSSet(Persistence)

- (BOOL) writeToFile:(NSString *)path atomically:(BOOL)flag;
+ (id) setWithContentsOfFile:(NSString *)path;

@end
