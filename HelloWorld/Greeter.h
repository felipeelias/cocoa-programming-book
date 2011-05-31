//
//  Greeter.h
//  HelloWorld
//
//  Created by Felipe Elias Philipp on 25/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Greeter : NSObject {
	NSString *name;
}

-(NSString *) greeting;
-(id) initWithName:(NSString *)name;
@property(copy) NSString *name;

@end
