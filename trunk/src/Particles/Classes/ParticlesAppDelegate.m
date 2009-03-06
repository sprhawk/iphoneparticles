//
//  ParticlesAppDelegate.m
//  Particles
//
//  Created by Jeff LaMarche on 12/30/08.
//  Copyright Jeff LaMarche Consulting 2008. All rights reserved.
//

#import "ParticlesAppDelegate.h"
#import "GLViewController.h"
#import "GLView.h"
#import "UIImage-NSCoding.h"


@implementation ParticlesAppDelegate
@synthesize window;
@synthesize controller;

- (void)applicationDidFinishLaunching:(UIApplication*)application
{
	
	CGRect	rect = [[UIScreen mainScreen] bounds];
	
	window = [[UIWindow alloc] initWithFrame:rect];
	
	GLViewController *theController = [[GLViewController alloc] init];
	self.controller = theController;
	[theController release];
	
	GLView *glView = [[GLView alloc] initWithFrame:rect];
	[window addSubview:glView];

	glView.controller = controller;
	glView.animationInterval = 1.0 / kRenderingFrequency;
	[glView startAnimation];
	[glView release];
	
	[window makeKeyAndVisible];

}

- (void)dealloc
{
	[window release];
	[controller release];
	[super dealloc];
}
@end
