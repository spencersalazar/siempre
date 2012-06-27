//
//  Geometry.h
//  Mood Globe
//
//  Created by Spencer Salazar on 6/26/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#ifndef Mood_Globe_Geometry_h
#define Mood_Globe_Geometry_h

struct GLvertex3f
{
    GLfloat x;
    GLfloat y;
    GLfloat z;
    
    GLfloat magnitude() { return sqrtf(x*x+y*y+z*z); }
} __attribute__((packed));

GLvertex3f operator*(const GLvertex3f &v, const GLfloat &s)
{
    GLvertex3f v2 = { v.x*s, v.y*s, v.z*s };
    return v2;
}

GLvertex3f operator/(const GLvertex3f &v, const GLfloat &s)
{
    GLvertex3f v2 = { v.x/s, v.y/s, v.z/s };
    return v2;
}

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

struct GLtrif
{
    GLgeoprimf a;
    GLgeoprimf b;
    GLgeoprimf c;
} __attribute__((packed));


#endif
