//
//  ParticleEmitter3D-Factories.m
//  Particles
//
//  Created by Jeff LaMarche on 1/1/09.
//  Copyright 2009 Jeff LaMarche Consulting. All rights reserved.
//

#import "ParticleEmitter3D-Factories.h"
#import "OpenGLTexture3D.h"

@implementation ParticleEmitter3D(Factories)
#pragma mark -
#pragma mark Factory Methods
+ (id)fountainEmitter
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Fountain Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:25.0
									  pitchVariance:25.0 
											  speed:2.0
									  speedVariance:0.0
								 particlesPerSecond:1200
						 particlesPerSecondVariance:50.0 
								   particleLifespan:15.0 
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.0, 0.0, 0.95, 1.0) 
								 startColorVariance:Color3DMake(0.0, 0.0, 0.1, 0.0) 
										finishColor:Color3DMake(0.7, 0.7, 1.0, 1.0)
								finishColorVariance:Color3DMake(0.0, 0.0, 0.0, 0.0) 
											  force:Vector3DMake(0.0, -1.25, .0)
									  forceVariance:Vector3DMake(0.0, 0.0, 0.0)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:3
							   particleSizeVariance:3
											texture:texture] autorelease];
	[texture release];
}
+ (id)neonBlueExplosionEmitter
{
	return [[[ParticleEmitter3D alloc] initWithName:@"Neon Blue Explosion Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:180.0
									  pitchVariance:180.0 
											  speed:1.0
									  speedVariance:0.2
								 particlesPerSecond:3000 
						 particlesPerSecondVariance:500 
								   particleLifespan:1.0
						   particleLifespanVariance:.25 
										 startColor:Color3DMake(0.0, 0.0, 0.95, 1.0) 
								 startColorVariance:Color3DMake(0.0, 0.0, 0.1, 0.0) 
										finishColor:Color3DMake(0.95, 0.0, 1.0, 1.0)
								finishColorVariance:Color3DMake(0.1, 0.0, 0.0, 0.0) 
											  force:Vector3DMake(0.0, 0.0, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawPoints
									   particleSize:1.0
							   particleSizeVariance:0.0
											texture:nil] autorelease];
}
+ (id)explosionEmitter
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Explosion Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:180.0
									  pitchVariance:180.0 
											  speed:3.0
									  speedVariance:0.2
								 particlesPerSecond:3000 
						 particlesPerSecondVariance:100
								   particleLifespan:3.0
						   particleLifespanVariance:.25 
										 startColor:Color3DMake(.95, 0.2, 0.2, 1.0) 
								 startColorVariance:Color3DMake(0.1, 0.2, 0.2, 0.0) 
										finishColor:Color3DMake(0.0, 0.0, 0.0, 0.0)
								finishColorVariance:Color3DMake(0.0, 0.0, 0.0, 0.0) 
											  force:Vector3DMake(0.0, 0.0, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:3.0
							   particleSizeVariance:0.0
											texture:texture] autorelease];
	[texture release];
}
+ (id)torchEmitter
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Torch Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:15.0
									  pitchVariance:15.0 
											  speed:0.2
									  speedVariance:0.1
								 particlesPerSecond:500 
						 particlesPerSecondVariance:50 
								   particleLifespan:3.25
						   particleLifespanVariance:.50 
										 startColor:Color3DMake(1.0, 0.4, 0.2, 1.0) 
								 startColorVariance:Color3DMake(0.0, 0.1, 0.1, 0.0) 
										finishColor:Color3DMake(0.0, 0.0, 0.0, 1.0)
								finishColorVariance:Color3DMake(0.09, 0.1, 0.1, 0.0) 
											  force:Vector3DMake(0.0, 0.0, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.1, 0.0)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:5.0
							   particleSizeVariance:5.0
											texture:texture] autorelease];
	[texture release];
}
+ (id)confettiParticleEmitter
{

	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Confetti Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:20.0
									  pitchVariance:20.0 
											  speed:3.0
									  speedVariance:0.0
								 particlesPerSecond:800 
						 particlesPerSecondVariance:200 
								   particleLifespan:9.0
						   particleLifespanVariance:2.0 
										 startColor:Color3DMake(0.5, 0.5, 0.5, 1.0) 
								 startColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
										finishColor:Color3DMake(0.5, 0.5, 0.5, 1.0)
								finishColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
											  force:Vector3DMake(0.0, -2.0, 0.0)
									  forceVariance:Vector3DMake(0.0, 2.0, 0.0)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:4
							   particleSizeVariance:2.0
											texture:texture] autorelease];
	[texture release];
}
+ (id)squareEmitter
{
	return [[[ParticleEmitter3D alloc] initWithName:@"Square Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:45.0
									  pitchVariance:45.0 
											  speed:1.0
									  speedVariance:0.2
								 particlesPerSecond:600 
						 particlesPerSecondVariance:25 
								   particleLifespan:5.0
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.5, 0.5, 0.5, 1.0) 
								 startColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
										finishColor:Color3DMake(0.5, 0.5, 0.5, 1.0)
								finishColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
											  force:Vector3DMake(0.0, -.5, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawSquares
									   particleSize:1.0
							   particleSizeVariance:0.0
											texture: nil] autorelease];
}
+ (id)circleEmitter
{
	return [[[ParticleEmitter3D alloc] initWithName:@"Circle Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:35.0
									  pitchVariance:35.0 
											  speed:2.0
									  speedVariance:0.2
								 particlesPerSecond:600 
						 particlesPerSecondVariance:25 
								   particleLifespan:5.0
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.5, 0.5, 0.5, 1.0) 
								 startColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
										finishColor:Color3DMake(0.5, 0.5, 0.5, 1.0)
								finishColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
											  force:Vector3DMake(0.0, -.5, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawCircles
									   particleSize:1.0
							   particleSizeVariance:0.0
											texture: nil] autorelease];
}
+ (id)triangleEmitter
{
	return [[[ParticleEmitter3D alloc] initWithName:@"Triangle Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:30.0
									  pitchVariance:30.0 
											  speed:1.0
									  speedVariance:0.2
								 particlesPerSecond:600 
						 particlesPerSecondVariance:25 
								   particleLifespan:5.0
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.5, 0.5, 0.5, 1.0) 
								 startColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
										finishColor:Color3DMake(0.5, 0.5, 0.5, 1.0)
								finishColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
											  force:Vector3DMake(0.5, -.5, 0.0)
									  forceVariance:Vector3DMake(0.3, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawTriangles
									   particleSize:1.0
							   particleSizeVariance:0.0
											texture: nil] autorelease];
}
+ (id)diamondEmitter
{
	return [[[ParticleEmitter3D alloc] initWithName:@"Diamond Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:45.0
									  pitchVariance:45.0 
											  speed:1.0
									  speedVariance:0.2
								 particlesPerSecond:600 
						 particlesPerSecondVariance:25 
								   particleLifespan:5.0
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.5, 0.5, 0.5, 1.0) 
								 startColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
										finishColor:Color3DMake(0.5, 0.5, 0.5, 1.0)
								finishColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
											  force:Vector3DMake(0.0, -.5, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawDiamonds
									   particleSize:1.0
							   particleSizeVariance:0.0
											texture: nil] autorelease];
}
+ (id)fireEmitter
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Fire Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:45.0
									  pitchVariance:45.0 
											  speed:1.0
									  speedVariance:0.2
								 particlesPerSecond:150.0
						 particlesPerSecondVariance:25.0 
								   particleLifespan:3.0
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.9, 0.4, 0.0, 1.0) 
								 startColorVariance:Color3DMake(0.2, 0.2, 0.0, 0.0) 
										finishColor:Color3DMake(0.0, 0.0, 0.0, 0.0)
								finishColorVariance:Color3DMake(0.0, 0.0, 0.0, 0.0) 
											  force:Vector3DMake(0.0, 0.0, 0.0)
									  forceVariance:Vector3DMake(0.2, 0.1, 0.2)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:15.0
							   particleSizeVariance:5.0
											texture: texture] autorelease];
	[texture release];
}
+ (id)whiteBurst
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Green Fog Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:360
									  pitchVariance:360 
											  speed:2
									  speedVariance:1
								 particlesPerSecond:1000
						 particlesPerSecondVariance:500 
								   particleLifespan:4
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.95, 0.95, 0.95, 0.3) 
								 startColorVariance:Color3DMake(0.1, 0.1, 0.1, 0.5) 
										finishColor:Color3DMake(0.75, 0.75, 0.75, 0.0)
								finishColorVariance:Color3DMake(0.1, 0.1, 0.1, 0.0) 
											  force:Vector3DMake(0.0, 0.0, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.0, 0.0)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:3.0
							   particleSizeVariance:3.0
											texture:texture] autorelease];
	[texture release];
}
+ (id)pixieDust
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"particle" ofType:@"pvr4"];
	OpenGLTexture3D *texture = [[OpenGLTexture3D alloc] initWithFilename:path width:64 height:64]; 
	return [[[ParticleEmitter3D alloc] initWithName:@"Green Fog Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:360
									  pitchVariance:360 
											  speed:0.1
									  speedVariance:0.05
								 particlesPerSecond:100 
						 particlesPerSecondVariance:20 
								   particleLifespan:10.0
						   particleLifespanVariance:2.0 
										 startColor:Color3DMake(0.0, 0.95, 0.0, 0.3) 
								 startColorVariance:Color3DMake(0.0, 0.1, 0.0, 0.5) 
										finishColor:Color3DMake(0.00, 0.95, 1.0, 0.0)
								finishColorVariance:Color3DMake(0.0, 0.1, 0.0, 0.0) 
											  force:Vector3DMake(0.0, 0.0, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawTextureMap
									   particleSize:10.0
							   particleSizeVariance:3.0
											texture:texture] autorelease];
	[texture release];
}
#pragma mark -
+ (id)testEmitter
{
	return [[[ParticleEmitter3D alloc] initWithName:@"Test Emitter" 
										   position:Vertex3DMake(0.0, 0.0, 0.0) 
										   rotation:Rotation3DMake(0.0, 0.0, 0.0)
									azimuthVariance:45.0
									  pitchVariance:45.0 
											  speed:1.0
									  speedVariance:0.2
								 particlesPerSecond:5
						 particlesPerSecondVariance:0 
								   particleLifespan:5.0
						   particleLifespanVariance:1.0 
										 startColor:Color3DMake(0.5, 0.5, 0.5, 1.0) 
								 startColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
										finishColor:Color3DMake(0.5, 0.5, 0.5, 1.0)
								finishColorVariance:Color3DMake(1.0, 1.0, 1.0, 0.0) 
											  force:Vector3DMake(0.0, -.5, 0.0)
									  forceVariance:Vector3DMake(0.0, 0.5, 0.0)
											   mode:ParticleEmitter3DDrawTriangles
									   particleSize:5.0
							   particleSizeVariance:0.0
											texture: nil] autorelease];
}
@end
