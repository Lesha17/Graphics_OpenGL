#include "common_header.h"
#include <unistd.h>

#include "glfw_OpenGLApp.h"


std::map<GLFWwindow*,COpenGLApp*> windowToApp;
COpenGLApp appMain;
bool COpenGLApp::bGlewInitialized = false;

void error_callback(int error, const char* description)
{
	fprintf(stderr, "Error: %s\n", description);
}

// Return true if Key is pressed.
// iKey - virtual Key code
int Keys::Key(int iKey)
{
	return glfwGetKey(appMain.window, iKey) == GLFW_PRESS;
}

void COpenGLApp::window_focus_callback(GLFWwindow * window, int focus) {

	COpenGLApp * instance = windowToApp[window];
	if(focus) {
		instance->bAppActive = true;
		instance->ResetTimer();
	} else {
		instance->bAppActive = false;
	}
}

void COpenGLApp::window_size_callback(GLFWwindow * window, int width, int height) {
	COpenGLApp * instance = windowToApp[window];

	instance->oglControl.ResizeOpenGLViewportFull();
	instance->oglControl.SetProjection3D(45.0f, float(instance->oglControl.GetViewportWidth())/float(instance->oglControl.GetViewportHeight()), 0.5f, 1000.0f);
}

void COpenGLApp::key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
	if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GLFW_TRUE);
}

// Resets application timer (for example after re-activation of application).
void COpenGLApp::ResetTimer()
{
	tLastFrame = clock();
	fFrameInterval = 0.0f;
}


// Updates application timer.
void COpenGLApp::UpdateTimer()
{
	clock_t tCur = clock();
	fFrameInterval = float(tCur-tLastFrame)/float(CLOCKS_PER_SEC);
	tLastFrame = tCur;
}

// Stands for speed optimized float.
float COpenGLApp::sof(float fVal)
{
	return fVal*fFrameInterval;
}

// Initializes app with specified (unique) application identifier.
bool COpenGLApp::InitializeApp(string a_sAppName)
{
	sAppName = a_sAppName;
	return 1;
}

// Creates fake window and OpenGL rendering context, within which GLEW is initialized.
bool COpenGLApp::InitGLEW()
{
	if(bGlewInitialized)return true;

	glfwSetErrorCallback(error_callback);

	if (!glfwInit())
		return false;

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
	GLFWwindow* window = glfwCreateWindow(1, 1, "FAKE", NULL, NULL);
	if (!window)
	{
		// Window or OpenGL context creation failed
		glfwTerminate();
		return false;
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

// Creates main application window.
// sTitle - title of created window
bool COpenGLApp::CreateAppWindow(const char * tittle)
{
	if(!InitGLEW())return false;

	window = glfwCreateWindow(800, 600, tittle, NULL, NULL);
	windowToApp[window] = this;
	if (!window)
	{
		glfwTerminate();
		return false;
	}

	if(!oglControl.InitOpenGL(window, InitScene, RenderScene, ReleaseScene, &oglControl)) return false;

	glfwSetWindowFocusCallback(window, window_focus_callback);
	glfwSetWindowSizeCallback(window, window_size_callback);
	glfwSetKeyCallback(window, key_callback);
	glfwMakeContextCurrent(window);

	glfwShowWindow(window);

	return true;
}

// Main application body infinite loop.
void COpenGLApp::AppBody()
{
	while(!glfwWindowShouldClose(window))
	{
		glfwPollEvents();
		if(bAppActive)
		{
			UpdateTimer();
			oglControl.Render(&oglControl);
		}
		else usleep(200000);; // Do not consume processor power if application isn't active
	}
}

// Shuts down application and releases used memory.
void COpenGLApp::Shutdown()
{
	oglControl.ReleaseOpenGLControl(&oglControl);

	glfwTerminate();
}

