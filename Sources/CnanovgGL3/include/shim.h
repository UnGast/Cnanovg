#define NANOVG_GL3 1
#define NANOVG_GL_USE_UNIFORMBUFFER 1

#if __APPLE__
    #include <OpenGL/gl3.h>
#else
    #include <GL/gl.h>
#endif
#include "../../Cnanovg/nanovg/src/nanovg.h"
#include "../../Cnanovg/nanovg/src/nanovg_gl.h"