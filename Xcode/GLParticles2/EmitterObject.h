//
//  EmitterObject.h
//  GLParticles2
//
//  Created by RRC on 5/2/13.
//  Copyright (c) 2013 Ricardo Rendon Cepeda. All rights reserved.
//

#import <GLKit/GLKit.h>

@interface EmitterObject : NSObject

- (id)initWithTexture:(NSString *)fileName at:(GLKVector2)position;
- (void)renderWithProjection:(GLKMatrix4)projectionMatrix;
- (BOOL)updateLifeCycle:(float)timeElapsed;

@end
