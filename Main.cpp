//
// Created by Aleksey Machnev on 2019-01-20.
//

#include "glfw_OpenGLApp.h"

// Application entry point.
int main()
{
    if(!appMain.InitializeApp("������� 2.  2018-2019"))
        return 0;

    if(!appMain.CreateAppWindow("������� 2. 2018-2019. ��������� ���������, Skybox, ���������������������"))
        return 0;
    appMain.ResetTimer();

    appMain.AppBody();
    appMain.Shutdown();

    return 0;
}