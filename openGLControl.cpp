#pragma warning(disable:4996)
#pragma comment(lib, "opengl32.lib")
#pragma comment(lib, "glu32.lib")
#pragma comment(lib, "glew32.lib")

#include "common_header.h"

#include "openGLControl.h"

#include <GLFW/glfw3.h>

#include <GLUT/glut.h>
#include <GLKit/GLKMath.h>
#include <glm/gtc/matrix_transform.hpp>


void error_callback(int error, const char* description)
{
	fprintf(stderr, "Error: %s\n", description);
}

bool COpenGLControl::bGlewInitialized = false;

COpenGLControl::COpenGLControl()
{
	iFPSCount = 0;
	iCurrentFPS = 0;
}

// Creates fake window and OpenGL rendering context, within which GLEW is initialized.
bool COpenGLControl::InitGLEW()
{
	if(bGlewInitialized)return true;

	if (!glfwInit())
		exit(EXIT_FAILURE);

	glfwSetErrorCallback(error_callback);

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	GLFWwindow* window = glfwCreateWindow(0, 0, "FAKE", NULL, NULL);
	if (!window)
	{
		// Window or OpenGL context creation failed
		glfwTerminate();
		exit(EXIT_FAILURE);
	}


	glfwMakeContextCurrent(window);

	bool bResult = true;

	if(!bGlewInitialized)
	{
		GLenum initRes = glewInit();
		if(initRes != GLEW_OK)
		{
			error_callback(initRes, "Couldn't initialize GLEW!");
			bResult = false;
		}
		bGlewInitialized = true;
	}

	glfwMakeContextCurrent(NULL);
	glfwDestroyWindow(window);

	return bResult;
}

// Initializes OpenGL rendering context. If succeeds, returns true.
// a_window - window to init OpenGL into
// a_initScene - pointer to init function
// a_renderScene - pointer to render function
// a_releaseScene - optional parameter of release function
bool COpenGLControl::InitOpenGL(GLFWwindow * a_window, void (*a_ptrInitScene)(void *), void (*a_ptrRenderScene)(void *), void(*a_ptrReleaseScene)(void *), void * lpParam)
{
	if(!InitGLEW())return false;

	bool bError = false;

	window = a_window;
	glfwMakeContextCurrent(a_window);

	ptrRenderScene = a_ptrRenderScene;
	ptrInitScene = a_ptrInitScene;
	ptrReleaseScene = a_ptrReleaseScene;

	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
	if(ptrInitScene != NULL)ptrInitScene(lpParam);

	return true;
}

// Resizes viewport to full window.
void COpenGLControl::ResizeOpenGLViewportFull()
{
	if(window == NULL)return;
	glfwGetFramebufferSize(window, &iViewportWidth, &iViewportHeight);
	glViewport(0, 0, iViewportWidth, iViewportHeight);
}

// Calculates projection matrix and stores it.
// fFOV - field of view angle
// fAspectRatio - aspect ration of width / height
// fNear, fFar - distance of near and far clipping plane
void COpenGLControl::SetProjection3D(float fFOV, float fAspectRatio, float fNear, float fFar)
{
	mProjection = glm::perspective(fFOV, fAspectRatio, fNear, fFar);
}

// Retrieves pointer to projection matrix.
glm::mat4* COpenGLControl::GetProjectionMatrix()
{
	return &mProjection;
}

// Swaps back and front buffer.
void COpenGLControl::SwapBuffers()
{
	glfwSwapBuffers(window);
}

// Calls previously set render function.
// param - pointer to whatever you want
void COpenGLControl::Render(void * param)
{
	clock_t tCurrent = clock();
	if( (tCurrent-tLastSecond) >= CLOCKS_PER_SEC)
	{
		tLastSecond += CLOCKS_PER_SEC;
		iFPSCount = iCurrentFPS;
		iCurrentFPS = 0;
	}
	if(ptrRenderScene)ptrRenderScene(param);
	iCurrentFPS++;
}

// Calls previously set release function and deletes rendering context.
// param - pointer to whatever you want
void COpenGLControl::ReleaseOpenGLControl(void * param)
{
	if(ptrReleaseScene)ptrReleaseScene(param);

	glfwMakeContextCurrent(NULL);
	glfwDestroyWindow(window);

	window = NULL;
}

// Sets vertical synchronization.
// bEnabled - whether to enable V-Sync
bool COpenGLControl::SetVerticalSynchronization(bool bEnabled)
{
	if(bEnabled)glfwSwapInterval(1);
	else glfwSwapInterval(0);

	return true;
}

int COpenGLControl::GetFPS()
{
	return iFPSCount;
}

int COpenGLControl::GetViewportWidth()
{
	return iViewportWidth;
}

int COpenGLControl::GetViewportHeight()
{
	return iViewportHeight;
}