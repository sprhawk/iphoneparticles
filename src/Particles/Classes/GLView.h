//
//  GLView.h
//  Particles
//
//  Created by Jeff LaMarche on 12/30/08.
//  Copyright Jeff LaMarche Consulting 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import "ConstantsAndMacros.h"
#import "OpenGLCommon.h"
@class GLViewController;
@interface GLView : UIView
{
	@private
	// The pixel dimensions of the backbuffer
	GLint backingWidth;
	GLint backingHeight;
	
	EAGLContext *context;
	GLuint viewRenderbuffer, viewFramebuffer;
	GLuint depthRenderbuffer;
	NSTimer *animationTimer;
	NSTimeInterval animationInterval;

	GLViewController *controller;
	BOOL controllerSetup;
	NSInteger	currentIndex;
}

@property(nonatomic, assign) GLViewController *controller;
@property NSTimeInterval animationInterval;
@property NSInteger currentIndex;
- (void)startAnimation;
- (void)stopAnimation;
- (void)drawView;
- (UIImage *)screenshotImage;
@end
