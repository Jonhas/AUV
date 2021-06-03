// Uncomment the following line if you are compiling this code in Visual Studio
//#include "stdafx.h"

#include <iostream>

#include "../include/display.hpp"

using namespace cv;


int main(int argc, char *argv[]) {

    if(argc != 2)
        return 0;

    Display display;
    display.Initialize();

    display.PlayVideo(argv[1]);

    return 0;
}
