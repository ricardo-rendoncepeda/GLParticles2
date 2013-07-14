//
//  EmitterShader.m
//  GLParticles2
//
//  Created by RRC on 5/2/13.
//  Copyright (c) 2013 Ricardo Rendon Cepeda. All rights reserved.
//

#import "EmitterShader.h"
#import "ShaderProcessor.h"

// Shaders
#define STRINGIFY(A) #A
#include "Emitter.vsh"
#include "Emitter.fsh"

@implementation EmitterShader

- (void)loadShader
{
    // Program
    ShaderProcessor* shaderProcessor = [[ShaderProcessor alloc] init];
    self.program = [shaderProcessor BuildProgram:EmitterVS with:EmitterFS];
    
    // Attributes
    self.a_pID = glGetAttribLocation(self.program, "a_pID");
    self.a_pRadiusOffset = glGetAttribLocation(self.program, "a_pRadiusOffset");
    self.a_pVelocityOffset = glGetAttribLocation(self.program, "a_pVelocityOffset");
    self.a_pDecayOffset = glGetAttribLocation(self.program, "a_pDecayOffset");
    self.a_pSizeOffset = glGetAttribLocation(self.program, "a_pSizeOffset");
    self.a_pColorOffset = glGetAttribLocation(self.program, "a_pColorOffset");
    
    // Uniforms
    self.u_ProjectionMatrix = glGetUniformLocation(self.program, "u_ProjectionMatrix");
    self.u_Gravity = glGetUniformLocation(self.program, "u_Gravity");
    self.u_Time = glGetUniformLocation(self.program, "u_Time");
    self.u_Texture = glGetUniformLocation(self.program, "u_Texture");
    self.u_ePosition = glGetUniformLocation(self.program, "u_ePosition");
    self.u_eRadius = glGetUniformLocation(self.program, "u_eRadius");
    self.u_eVelocity = glGetUniformLocation(self.program, "u_eVelocity");
    self.u_eDecay = glGetUniformLocation(self.program, "u_eDecay");
    self.u_eSizeStart = glGetUniformLocation(self.program, "u_eSizeStart");
    self.u_eSizeEnd = glGetUniformLocation(self.program, "u_eSizeEnd");
    self.u_eColorStart = glGetUniformLocation(self.program, "u_eColorStart");
    self.u_eColorEnd = glGetUniformLocation(self.program, "u_eColorEnd");
}

@end
