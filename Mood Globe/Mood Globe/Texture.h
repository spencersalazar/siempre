/*
 *  Texture.h
 *  BallPit
 *
 *  Created by Spencer Salazar on 6/7/10.
 *  Copyright 2010 Spencer Salazar. All rights reserved.
 *
 */

#include <OpenGLES/ES1/gl.h>
#include <OpenGLES/ES1/glext.h>

#if __OBJC__
#import <Foundation/Foundation.h>
GLuint loadTexture(NSString *name);
#endif // __OBJC
GLuint loadTexture(const char *name);
