#ifndef DISPLAY_HPP
#define DISPLAY_HPP

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <functional>
#include <iostream>
#include <memory>
#include <opencv4/opencv2/core/types.hpp>
#include <opencv4/opencv2/xfeatures2d.hpp>
#include <opencv4/opencv2/features2d.hpp>
#include <opencv4/opencv2/highgui.hpp>
#include <opencv4/opencv2/opencv.hpp>
#include <vector>

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

  static cv::Mat extract_feature(cv::Mat &mat, const cv::Ptr<cv::ORB> &detector) {
    std::vector<cv::KeyPoint> keypoints;
    detector->detect(mat, keypoints);

    // Draw key points
    cv::Mat keypoint_img;
    cv::drawKeypoints(mat, keypoints, keypoint_img, cv::Scalar(0, 255, 0),
                      cv::DrawMatchesFlags::DEFAULT);
    return keypoint_img;
  }

  static std::unique_ptr<SDL_Texture, std::function<void(SDL_Texture *)>>
  CVToSDL(const cv::Mat &matrix, SDL_Renderer *rend) {
    auto tex = std::unique_ptr<SDL_Texture, std::function<void(SDL_Texture *)>>(
        SDL_CreateTexture(rend, SDL_PIXELFORMAT_BGR24, SDL_TEXTUREACCESS_STATIC,
                          matrix.cols, matrix.rows),
        SDL_DestroyTexture);
    SDL_UpdateTexture(tex.get(), nullptr, (void *)matrix.data, matrix.step1());
    return tex;
  }
};

} // namespace Slam
#endif
