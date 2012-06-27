//
//  MGViewController.m
//  Mood Globe
//
//  Created by Spencer Salazar on 6/26/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#import "MGViewController.h"
#import "Geometry.h"


GLfloat gCubeVertexData[360] = 
{
    // Data layout for each line below is:
    // positionX|Y|Z           normalX|Y|Z           color R|G|B|A
    0.5f, -0.5f, -0.5f,        1.0f, 0.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, -0.5f,         1.0f, 0.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, 0.5f,         1.0f, 0.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, 0.5f,         1.0f, 0.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, -0.5f,         1.0f, 0.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, 0.5f,          1.0f, 0.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    
    0.5f, 0.5f, -0.5f,         0.0f, 1.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, -0.5f,        0.0f, 1.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, 0.5f,          0.0f, 1.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, 0.5f,          0.0f, 1.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, -0.5f,        0.0f, 1.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, 0.5f,         0.0f, 1.0f, 0.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    
    -0.5f, 0.5f, -0.5f,        -1.0f, 0.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,       -1.0f, 0.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, 0.5f,         -1.0f, 0.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, 0.5f,         -1.0f, 0.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,       -1.0f, 0.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f,        -1.0f, 0.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    
    -0.5f, -0.5f, -0.5f,       0.0f, -1.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, -0.5f,        0.0f, -1.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f,        0.0f, -1.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f,        0.0f, -1.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, -0.5f,        0.0f, -1.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, 0.5f,         0.0f, -1.0f, 0.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    
    0.5f, 0.5f, 0.5f,          0.0f, 0.0f, 1.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, 0.5f,         0.0f, 0.0f, 1.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, 0.5f,         0.0f, 0.0f, 1.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, -0.5f, 0.5f,         0.0f, 0.0f, 1.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, 0.5f,         0.0f, 0.0f, 1.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f,        0.0f, 0.0f, 1.0f,     1.0f, 0.0f, 0.0f, 1.0f,
    
    0.5f, -0.5f, -0.5f,        0.0f, 0.0f, -1.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,       0.0f, 0.0f, -1.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, -0.5f,         0.0f, 0.0f, -1.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    0.5f, 0.5f, -0.5f,         0.0f, 0.0f, -1.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,       0.0f, 0.0f, -1.0f,    1.0f, 0.0f, 0.0f, 1.0f,
    -0.5f, 0.5f, -0.5f,        0.0f, 0.0f, -1.0f,    1.0f, 0.0f, 0.0f, 1.0f,
};

@interface MGViewController () {
    GLuint _program;
    
    GLKMatrix4 _modelViewProjectionMatrix;
    GLKMatrix3 _normalMatrix;
    float _rotation;
    
    GLuint _vertexArray;
    GLuint _vertexBuffer;
    
    GLtrif * globeTris;
    GLuint numGlobeTris;
}
@property (strong, nonatomic) EAGLContext *context;

- (void)setupGL;
- (void)tearDownGL;

@end

@implementation MGViewController

@synthesize context = _context;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES1];

    if (!self.context) {
        NSLog(@"Failed to create ES context");
    }
    
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    
    // number of subdivisions
    int N = 5;
    
    numGlobeTris = 20;
    for(int n = 1; n < N; n++) numGlobeTris *= 4;
    globeTris = new GLtrif[numGlobeTris];
    memset(globeTris, 0, sizeof(GLtrif)*numGlobeTris);
    // draw globe from subdivided icosahedron
    // see http://en.wikipedia.org/wiki/Icosahedron
    
    // golden ratio
    float phi = (-1 + sqrtf(5))/2;
    
    // the 12 individual vertices of the icosahedron
    //    {-X, 0.0, Z}, {X, 0.0, Z}, {-X, 0.0, -Z}, {X, 0.0, -Z},    
    //    {0.0, Z, X}, {0.0, Z, -X}, {0.0, -Z, X}, {0.0, -Z, -X},    
    //    {Z, X, 0.0}, {-Z, X, 0.0}, {Z, -X, 0.0}, {-Z, -X, 0.0} 
    GLvertex3f icosa_vertices[12] =
    {
        { -phi, 0, 1, },
        { phi, 0, 1, },
        { -phi, 0, -1, },
        { phi, 0, -1, },
        { 0, 1, phi, },
        { 0, 1, -phi, },
        { 0, -1, phi, },
        { 0, -1, -phi, },
        { 1, phi, 0, },
        { -1, phi, 0, },
        { 1, -phi, 0, },
        { -1, -phi, 0, },
    };        
    
    // the faces of the icosahedron, as indices into icosa_vertices
    // thanks Red Book and
    // http://www.3dbuzz.com/vbforum/showthread.php?118279-Quick-solution-for-making-a-sphere-in-OpenGL
    //    {0,4,1}, {0,9,4}, {9,5,4}, {4,5,8}, {4,8,1},    
    //    {8,10,1}, {8,3,10}, {5,3,8}, {5,2,3}, {2,7,3},    
    //    {7,10,3}, {7,6,10}, {7,11,6}, {11,0,6}, {0,1,6}, 
    //    {6,1,10}, {9,0,11}, {9,11,2}, {9,2,5}, {7,2,11}

    int icosa_tris[20][3] = 
    {
        {0,4,1}, {0,9,4}, {9,5,4}, {4,5,8}, {4,8,1},    
        {8,10,1}, {8,3,10}, {5,3,8}, {5,2,3}, {2,7,3},    
        {7,10,3}, {7,6,10}, {7,11,6}, {11,0,6}, {0,1,6}, 
        {6,1,10}, {9,0,11}, {9,11,2}, {9,2,5}, {7,2,11}
    };
    
    GLcolor4f c = { 1.0f, 0, 0, 1.0f };
    
    // seed initial vertices
    for(int i = 0; i < 20; i++)
    {
        globeTris[i].a.vertex = icosa_vertices[icosa_tris[i][0]];
        globeTris[i].a.vertex = globeTris[i].a.vertex/globeTris[i].a.vertex.magnitude();
        globeTris[i].a.normal = globeTris[i].a.vertex/globeTris[i].a.vertex.magnitude();
        
        globeTris[i].b.vertex = icosa_vertices[icosa_tris[i][1]];
        globeTris[i].b.vertex = globeTris[i].b.vertex/globeTris[i].b.vertex.magnitude();
        globeTris[i].b.normal = globeTris[i].b.vertex/globeTris[i].b.vertex.magnitude();
        
        globeTris[i].c.vertex = icosa_vertices[icosa_tris[i][2]];
        globeTris[i].c.vertex = globeTris[i].c.vertex/globeTris[i].c.vertex.magnitude();
        globeTris[i].c.normal = globeTris[i].c.vertex/globeTris[i].c.vertex.magnitude();
        
        globeTris[i].a.color = globeTris[i].b.color = globeTris[i].c.color = c;
    }
    
    // subdivide
    int numTris = 20;
    for(int n = 0; n < N-1; n++)
    {
        for(int i = 0; i < numTris; i++)
        {
            // subdivide by dividing existing triangle into 4 triangles, adding
            // 3 extra vertices at the midpoints
            // normalize all vertices to ensure unit radius
            GLtrif tri = globeTris[i];
            
            GLvertex3f ab_midpt = tri.a.vertex + (tri.b.vertex - tri.a.vertex)/2;
            GLvertex3f ac_midpt = tri.a.vertex + (tri.c.vertex - tri.a.vertex)/2;
            GLvertex3f bc_midpt = tri.b.vertex + (tri.c.vertex - tri.b.vertex)/2;
            
            GLtrif w = tri;
            w.a.vertex = tri.a.vertex;
            w.a.normal = w.a.vertex;
            w.b.vertex = ab_midpt/ab_midpt.magnitude();
            w.b.normal = w.b.vertex;
            w.c.vertex = ac_midpt/ac_midpt.magnitude();
            w.c.normal = w.c.vertex;
            
            GLtrif x = tri;
            x.a.vertex = tri.b.vertex;
            x.a.normal = x.a.vertex;
            x.b.vertex = bc_midpt/bc_midpt.magnitude();
            x.b.normal = x.b.vertex;
            x.c.vertex = ab_midpt/ab_midpt.magnitude();
            x.c.normal = x.c.vertex;
            
            GLtrif y = tri;
            y.a.vertex = tri.c.vertex;
            y.a.normal = y.a.vertex;
            y.b.vertex = ac_midpt/ac_midpt.magnitude();
            y.b.normal = y.b.vertex;
            y.c.vertex = bc_midpt/bc_midpt.magnitude();
            y.c.normal = y.c.vertex;
            
            GLtrif z = tri;
            z.a.vertex = ab_midpt/ab_midpt.magnitude();
            z.a.normal = z.a.vertex;
            z.b.vertex = ac_midpt/ac_midpt.magnitude();
            z.b.normal = z.b.vertex;
            z.c.vertex = bc_midpt/bc_midpt.magnitude();
            z.c.normal = z.c.vertex;
            
            globeTris[i] = w;
            globeTris[i+numTris*1] = x;
            globeTris[i+numTris*2] = y;
            globeTris[i+numTris*3] = z;
        }
        
        numTris *= 4;
    }
    
    [self setupGL];
}

- (void)viewDidUnload
{    
    [super viewDidUnload];
    
    [self tearDownGL];
    
    if ([EAGLContext currentContext] == self.context) {
        [EAGLContext setCurrentContext:nil];
    }
	self.context = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc. that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)setupGL
{
    [EAGLContext setCurrentContext:self.context];
    
    glEnable(GL_DEPTH_TEST);
}

- (void)tearDownGL
{
    [EAGLContext setCurrentContext:self.context];
    
    if (_program) {
        glDeleteProgram(_program);
        _program = 0;
    }
}

#pragma mark - GLKView and GLKViewController delegate methods

- (void)update
{
    float aspect = fabsf(self.view.bounds.size.width / self.view.bounds.size.height);
    GLKMatrix4 projectionMatrix = GLKMatrix4MakePerspective(GLKMathDegreesToRadians(65.0f), aspect, 0.1f, 100.0f);
    
    GLKMatrix4 baseModelViewMatrix = GLKMatrix4MakeTranslation(0.0f, 0.0f, -4.0f);
    baseModelViewMatrix = GLKMatrix4Rotate(baseModelViewMatrix, _rotation, 0.0f, 1.0f, 0.0f);
    
    // Compute the model view matrix for the object rendered with GLKit
    GLKMatrix4 modelViewMatrix = GLKMatrix4MakeTranslation(0.0f, 0.0f, -1.5f);
    modelViewMatrix = GLKMatrix4Rotate(modelViewMatrix, _rotation, 1.0f, 1.0f, 1.0f);
    modelViewMatrix = GLKMatrix4Multiply(baseModelViewMatrix, modelViewMatrix);
    
    // Compute the model view matrix for the object rendered with ES2
    modelViewMatrix = GLKMatrix4MakeTranslation(0.0f, 0.0f, 1.5f);
    modelViewMatrix = GLKMatrix4Rotate(modelViewMatrix, _rotation, 1.0f, 1.0f, 1.0f);
    modelViewMatrix = GLKMatrix4Multiply(baseModelViewMatrix, modelViewMatrix);
    
    _normalMatrix = GLKMatrix3InvertAndTranspose(GLKMatrix4GetMatrix3(modelViewMatrix), NULL);
    
    _modelViewProjectionMatrix = GLKMatrix4Multiply(projectionMatrix, modelViewMatrix);
    
    _rotation += self.timeSinceLastUpdate * 0.5f;
    while(_rotation > M_PI*2)
        _rotation -= M_PI*2;
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    /*** clear ***/
    
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    /*** projection ***/

    glMatrixMode(GL_PROJECTION);
    float aspect = fabsf(self.view.bounds.size.width / self.view.bounds.size.height);
    GLKMatrix4 projectionMatrix = GLKMatrix4MakePerspective(GLKMathDegreesToRadians(65.0f), aspect, 0.1f, 100.0f);
    glLoadMatrixf(projectionMatrix.m);
    
    /*** lighting ***/
    
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_LIGHT1);
    
    glShadeModel(GL_SMOOTH);
    
    /*** model/view ***/
    
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glTranslatef(0, 0, -5);
    glRotatef(_rotation/M_PI*180.0f, 0, 1, 0);
    
    /*** lighting ***/
    
    //GLfloat light_ambient[] = { 0.8, 0.8, 0.8, 1.0 };
    GLfloat light_ambient[] = { 0, 0, 0, 0.0 };
    GLfloat light_diffuse[] = { 1.0, 1.0, 1.0, 1.0 };
    GLfloat light_specular[] = { 1.0, 1.0, 1.0, 1.0 };
    GLfloat light0_position[] = { 50, 0, 50, 0.5 };
    GLfloat light1_position[] = { -50, 0, 50, 0.5 };
    //GLfloat light_position[] = { 0.0, 0.0, -1.0, 0.0 };
    
    GLfloat lmodel_ambient[] = { 0.0, 0.0, 0.0, 0.0 };
    
    glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);
    glLightfv(GL_LIGHT0, GL_POSITION, light0_position);
    
    glLightfv(GL_LIGHT1, GL_AMBIENT, light_ambient);
    glLightfv(GL_LIGHT1, GL_DIFFUSE, light_diffuse);
    glLightfv(GL_LIGHT1, GL_SPECULAR, light_specular);
    glLightfv(GL_LIGHT1, GL_POSITION, light1_position);
    
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
    
    /*** supply primitives ***/

//    glBindVertexArrayOES(_vertexArray);
    
    // Render the object with GLKit
//    [self.effect prepareToDraw];
    
//    glVertexPointer(3, GL_FLOAT, 10*sizeof(GLfloat), gCubeVertexData);
//    glEnableClientState(GL_VERTEX_ARRAY);
//    glNormalPointer(GL_FLOAT, 10*sizeof(GLfloat), gCubeVertexData+3);
//    glEnableClientState(GL_NORMAL_ARRAY);
//    glColorPointer(4, GL_FLOAT, 10*sizeof(GLfloat), gCubeVertexData+6);
//    glEnableClientState(GL_COLOR_ARRAY);
//    
//    glDrawArrays(GL_TRIANGLES, 0, 36);
    
    glVertexPointer(3, GL_FLOAT, sizeof(GLgeoprimf), &globeTris[0].a.vertex);
    glEnableClientState(GL_VERTEX_ARRAY);
    glNormalPointer(GL_FLOAT, sizeof(GLgeoprimf), &globeTris[0].a.normal);
    glEnableClientState(GL_NORMAL_ARRAY);
    glColorPointer(4, GL_FLOAT, sizeof(GLgeoprimf), &globeTris[0].a.color);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glDrawArrays(GL_TRIANGLES, 0, numGlobeTris*3);
}


@end


