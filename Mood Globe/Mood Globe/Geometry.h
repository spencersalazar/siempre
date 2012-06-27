//
//  Geometry.h
//  Mood Globe
//
//  Created by Spencer Salazar on 6/26/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#ifndef Mood_Globe_Geometry_h
#define Mood_Globe_Geometry_h

#include <math.h>
#include <OpenGLES/ES1/gl.h>
#include <OpenGLES/ES1/glext.h>

struct GLvertex2f;

struct GLvertex3f
{
    GLfloat x;
    GLfloat y;
    GLfloat z;
    
    GLfloat magnitude() { return sqrtf(x*x+y*y+z*z); }
    
    GLvertex2f toLatLong();
} __attribute__((packed));

GLvertex3f operator+(const GLvertex3f &v1, const GLvertex3f &v2);
GLvertex3f operator-(const GLvertex3f &v1, const GLvertex3f &v2);
GLvertex3f operator*(const GLvertex3f &v, const GLfloat &s);
GLvertex3f operator/(const GLvertex3f &v, const GLfloat &s);

struct GLcolor4f
{
    GLfloat r;
    GLfloat g;
    GLfloat b;
    GLfloat a;
} __attribute__((packed));

struct GLvertex2f
{
    GLfloat x;
    GLfloat y;
} __attribute__((packed));

// geometry primitve, i.e. vertex/normal/color/uv
struct GLgeoprimf
{
    GLvertex3f vertex;
    GLvertex3f normal;
    GLvertex2f texcoord;
    GLcolor4f color;
} __attribute__((packed));

// triangle primitive -- 3 vertex primitives
struct GLtrif
{
    GLgeoprimf a;
    GLgeoprimf b;
    GLgeoprimf c;
} __attribute__((packed));


#endif
