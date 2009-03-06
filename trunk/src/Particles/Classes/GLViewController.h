//
//  GLViewController.h
//  Particles
//
//  Created by Jeff LaMarche on 12/30/08.
//  Copyright Jeff LaMarche Consulting 2008. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>

@class GLView;
@class ParticleEmitter3D;
@interface GLViewController : UIViewController 
{
	NSMutableArray *emitters;
}

@property (nonatomic, retain) NSMutableArray *emitters;
- (void)drawView:(GLView*)view;
- (void)setupView:(GLView*)view;

@end
