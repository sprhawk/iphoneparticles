//
//  ParticlesAppDelegate.h
//  Particles
//
//  Created by Jeff LaMarche on 12/30/08.
//  Copyright Jeff LaMarche Consulting 2008. All rights reserved.
//

@class GLViewController;

@interface ParticlesAppDelegate : NSObject <UIApplicationDelegate>
{
	UIWindow				*window;
	GLViewController		*controller;
}
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GLViewController *controller;
@end
