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
	NSInteger age;
	Greeter *buddy;
	BOOL *upperCase;
}

-(NSString *) greeting;
-(id) initWithName:(NSString *)name;
@property (copy) NSString *name;
@property (assign, readonly) NSInteger age;
@property (retain) Greeter *buddy;
@property (assign, getter=isUppperCase) BOOL upperCase;

@end
