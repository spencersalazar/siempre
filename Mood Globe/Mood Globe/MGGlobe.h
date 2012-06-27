//
//  MGGlobe.h
//  Mood Globe
//
//  Created by Spencer Salazar on 6/27/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#ifndef Mood_Globe_MGGlobe_h
#define Mood_Globe_MGGlobe_h

#import "Geometry.h"

class MGGlobe
{
public:
    MGGlobe();
    ~MGGlobe();
    
    void init();
    void update(float dt);
    void render();
    void destroy();
    
    float setRotation(float r) { return m_rotation = r; }
    
protected:
    
    float m_rotation;
    GLuint earthTex;
    GLtrif * globeTris;
    GLuint numGlobeTris;
};

#endif
