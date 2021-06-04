#ifndef DISPLAY_HPP
#define DISPLAY_HPP

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <functional>
#include <iostream>
#include <memory>

#include <opencv2/highgui.hpp>
#include <opencv4/opencv2/opencv.hpp>

namespace Slam {

typedef struct Display2D Display2D;
typedef struct Display3D Display3D;

struct Display2D {

  static int initialize() {
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
      std::cerr << "Could not initialize SDL2" << '\n';
      return -1;
    }
    IMG_Init(IMG_INIT_PNG);

    return 0;
  }

  static SDL_Texture *CVToSDL(const cv::Mat &matrix, SDL_Renderer *rend) {
    SDL_Texture *tex =
        SDL_CreateTexture(rend, SDL_PIXELFORMAT_BGR24, SDL_TEXTUREACCESS_STATIC,
                          matrix.cols, matrix.rows);
    SDL_UpdateTexture(tex, nullptr, (void *)matrix.data, matrix.step1());
    return tex;
  }
};

} // namespace Slam
#endif
