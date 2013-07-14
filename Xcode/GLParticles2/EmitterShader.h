//
//  EmitterShader.h
//  GLParticles2
//
//  Created by RRC on 5/2/13.
//  Copyright (c) 2013 Ricardo Rendon Cepeda. All rights reserved.
//

#import <GLKit/GLKit.h>

@interface EmitterShader : NSObject

// Program Handle
@property (readwrite) GLuint    program;

// Attribute Handles
@property (readwrite) GLint     a_pID;
@property (readwrite) GLint     a_pRadiusOffset;
@property (readwrite) GLint     a_pVelocityOffset;
@property (readwrite) GLint     a_pDecayOffset;
@property (readwrite) GLint     a_pSizeOffset;
@property (readwrite) GLint     a_pColorOffset;

// Uniform Handles
@property (readwrite) GLuint    u_ProjectionMatrix;
@property (readwrite) GLint     u_Gravity;
@property (readwrite) GLint     u_Time;
@property (readwrite) GLint     u_Texture;
@property (readwrite) GLint     u_ePosition;
@property (readwrite) GLint     u_eRadius;
@property (readwrite) GLint     u_eVelocity;
@property (readwrite) GLint     u_eDecay;
@property (readwrite) GLint     u_eSizeStart;
@property (readwrite) GLint     u_eSizeEnd;
@property (readwrite) GLint     u_eColorStart;
@property (readwrite) GLint     u_eColorEnd;

// Methods
- (void)loadShader;

@end
