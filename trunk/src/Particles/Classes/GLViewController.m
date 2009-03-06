//
//  GLViewController.h
//  Particles
//
//  Created by Jeff LaMarche on 12/30/08.
//  Copyright Jeff LaMarche Consulting 2008. All rights reserved.
//

#import "GLViewController.h"
#import "GLView.h"
#import "OpenGLCommon.h"
#import "ConstantsAndMacros.h"
#import "ParticleEmitter3D.h"
#import "ParticleEmitter3D-Factories.h"

@implementation GLViewController

@synthesize emitters;
- (void)drawView:(GLView*)view;
{
	glColor4f(0.0, 0.0, 0.0, 0.0);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	for (ParticleEmitter3D *oneEmitter in emitters)
		[oneEmitter drawSelf];
	
}
- (void)alternateExplosionEmitter:(NSTimer*)theTimer
{
	static int counter = 0;
	
		for(ParticleEmitter3D *oneEmitter in emitters)
		{
			if (oneEmitter.isEmitting)
				[oneEmitter stopEmitting];
			else
			{
				if (counter++ >= 5)
				{	
					[oneEmitter startEmitting];
					counter = 0;
				}
				
			}
				
		}
}

-(void)setupView:(GLView*)view
{
//	const GLfloat			lightAmbient[] = {0.2, 0.2, 0.2, 1.0};
//	const GLfloat			lightDiffuse[] = {1.0, 1.0, 1.0, 1.0};
//	
//	const GLfloat			lightPosition[] = {0.0, 5.0, 5.0, 0.0}; 
//	const GLfloat			light2Position[] = {-5.0, -5.0, 15.0, 0.0};
//	const GLfloat			lightShininess = 0.0;
	
	self.emitters = [NSMutableArray array];
	const GLfloat zNear = 0.01, zFar = 1000.0, fieldOfView = 45.0; 
	GLfloat size; 
	glEnable(GL_DEPTH_TEST);
	glMatrixMode(GL_PROJECTION); 
	size = zNear * tanf(DEGREES_TO_RADIANS(fieldOfView) / 2.0); 
	CGRect rect = view.bounds; 
	glFrustumf(-size, size, -size / (rect.size.width / rect.size.height), size / 
			   (rect.size.width / rect.size.height), zNear, zFar); 
	glViewport(0, 0, rect.size.width, rect.size.height);  
	glMatrixMode(GL_MODELVIEW);
	
	glEnable (GL_BLEND);
	glBlendFunc (GL_ONE, GL_ONE);
	self.view = view;
	view.userInteractionEnabled = YES;	
	
	glLoadIdentity(); 
		
	
	// Non texture mapped generators	
	ParticleEmitter3D * triangleEmitter = [ParticleEmitter3D triangleEmitter];
	triangleEmitter.position = Vertex3DMake(-0.8, 0.0, -4.0);
	triangleEmitter.rotation = Rotation3DMake(00.0, 25.0, 0.0);
	[emitters addObject:triangleEmitter];
	
	ParticleEmitter3D *circleEmitter = [ParticleEmitter3D circleEmitter];
	circleEmitter.position = Vertex3DMake(-0.5, -1.3, -4.0);
	[emitters addObject:circleEmitter];
	
	ParticleEmitter3D *squareEmitter = [ParticleEmitter3D squareEmitter];
	squareEmitter.position = Vertex3DMake(-0.5, 0.0, -4.0);
	[emitters addObject:squareEmitter];
//	
	// Start texture mapped effects
	
	ParticleEmitter3D *fireEmitter =[ParticleEmitter3D fireEmitter];
	fireEmitter.position = Vertex3DMake(0.0, -1.0, -4.0);
	[emitters addObject:fireEmitter];
	
	ParticleEmitter3D *confettiEmitter = [ParticleEmitter3D confettiParticleEmitter];
	confettiEmitter.position = Vertex3DMake(-0.5, -2.0, -4.0);
	confettiEmitter.rotation = Vertex3DMake(0.0, 45.0, 0.0);
	[emitters addObject:confettiEmitter];
	
	ParticleEmitter3D *torchEmitter = [ParticleEmitter3D torchEmitter];
	torchEmitter.position = Vertex3DMake(0.0, -1, -3.0);
	[emitters addObject:torchEmitter];
	
	ParticleEmitter3D *explosionEmitter = [ParticleEmitter3D explosionEmitter];
	explosionEmitter.position = Vertex3DMake(0.0, 0.0, -4.0);
	[emitters addObject:explosionEmitter];
	
	ParticleEmitter3D *fountainEmitter = [ParticleEmitter3D fountainEmitter];
	fountainEmitter.position = Vertex3DMake(0.0, -1.5, -3.0);
	[emitters addObject:fountainEmitter];
	
	ParticleEmitter3D *pixieDust = [ParticleEmitter3D pixieDust];
	pixieDust.position = Vertex3DMake(0.0, 0.0, -4.0);
	[emitters addObject:pixieDust];
	
	ParticleEmitter3D *whiteBurst = [ParticleEmitter3D whiteBurst];
	whiteBurst.position = Vertex3DMake(0.0, 0.0, -4.0);
	[emitters addObject:whiteBurst];
	
	

	
	ParticleEmitter3D *neonBlueExplosionEmitter = [ParticleEmitter3D neonBlueExplosionEmitter];
	neonBlueExplosionEmitter.position = Vertex3DMake(0.0, 1.0, -4.0);
	[emitters addObject:neonBlueExplosionEmitter];



	//
	[[emitters objectAtIndex:0] startEmitting];
	view.currentIndex = 0; // Actually unnecessary, will be initialized to zero anyway, but...
	
}
- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning]; 
}

- (void)dealloc 
{
	[emitters release];
    [super dealloc];
}

@end
