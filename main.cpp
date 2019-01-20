//
// Created by Aleksey Machnev on 2019-01-20.
//

#include "glfw_OpenGLApp.h"

#include <iostream>

// Application entry point.
int main()
{
    std::cout << "Hello, world!" << std::endl;

    if(!appMain.InitializeApp("������� 2.  2018-2019")) {
        std::cout << "Could not initialize  app" << std::endl;
        return 0;
    }

    if(!appMain.CreateAppWindow("������� 2. 2018-2019. ��������� ���������, Skybox, ���������������������")) {
        std::cout << "Could not create window" << std::endl;
        return 0;
    }

    appMain.ResetTimer();

    appMain.AppBody();
    appMain.Shutdown();

    return 0;
}