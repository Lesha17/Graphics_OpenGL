#pragma once

#ifndef OPENGL_CONTROL
#define OPENGL_CONTROL

#include "common_header.h"

#include <GLFW/glfw3.h>

// Provides convenient usage of OpenGL.
class COpenGLControl
{
public:
	bool InitOpenGL(GLFWwindow * a_window, void (*a_ptrInitScene)(void *), void (*a_ptrRenderScene)(void *), void(*a_ptrReleaseScene)(void *), void * lpParam);
	
	void ResizeOpenGLViewportFull();
	void SetProjection3D(float fFOV, float fAspectRatio, float fNear, float fFar);

	glm::mat4* GetProjectionMatrix();

	void Render(void * param);
	void ReleaseOpenGLControl(void * lpParam);

	void SwapBuffers();

	bool SetVerticalSynchronization(bool bEnabled);

	int GetFPS();

	int GetViewportWidth();
	int GetViewportHeight();

	COpenGLControl();

private:

    GLFWwindow * window;

	// Used for FPS calculation
	int iFPSCount, iCurrentFPS;
	clock_t tLastSecond;

	// Matrix for perspective projection
	glm::mat4 mProjection;

	// Viewport parameters
	int iViewportWidth, iViewportHeight;

	void (*ptrInitScene)(void * param), (*ptrRenderScene)(void * param), (*ptrReleaseScene)(void * param);
};

#endif