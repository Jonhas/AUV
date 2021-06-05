#include <iostream>

#include "../include/display.hpp"

int main(int argc, char *argv[]) {

  if (argc != 2) {
    std::cerr << "Required input file for video testing" << '\n';
    return -1;
  }

  if (!argv[1]) {
    std::cerr << "Invalid input file" << '\n';
    return -1;
  }

  auto capture = cv::VideoCapture(argv[1]);

  if (!capture.isOpened()) {
    std::cerr << "Unable to open input file" << '\n';
    return -1;
  }

  if (Slam::Display2D::initialize() != 0) {
    std::cerr << "Invalid initialization" << '\n';
    return -1;
  }

  auto win = std::unique_ptr<SDL_Window, std::function<void(SDL_Window *)>>(
      SDL_CreateWindow("AUV Slam", SDL_WINDOWPOS_CENTERED,
                       SDL_WINDOWPOS_CENTERED, 980, 540, SDL_WINDOW_SHOWN),
      SDL_DestroyWindow);

  if (!win) {
    std::cerr << "Invalid window construction" << '\n';
    return -1;
  }

  auto rend =
      std::unique_ptr<SDL_Renderer, std::function<void(SDL_Renderer *)>>(
          SDL_CreateRenderer(win.get(), -1, 0), SDL_DestroyRenderer);

  if (!rend) {
    std::cerr << "Invalid renderer construction" << '\n';
    return -1;
  }

  cv::Mat frame;
  capture >> frame;

  while (capture.isOpened()) {
    bool is_success = capture.read(frame);
    if (!is_success)
      break;
    cv::Mat gray{}; 
    cv::cvtColor(frame,gray,cv::COLOR_BGR2GRAY);
    cv::GaussianBlur( gray, gray, cv::Size(9, 9), 2, 2 );
    //auto f = Slam::Display2D::extract_feature(frame,detector); 
    //frame = std::move(f);
    Slam::Display2D::harris_extract(frame,gray); 
    if (!rend)
      break;
    SDL_RenderClear(rend.get());
    SDL_RenderCopy(rend.get(),
                   Slam::Display2D::CVToSDL(frame, rend.get()).get(), 0, 0);
    SDL_RenderPresent(rend.get());
    //SDL_Delay(10);
  }

  SDL_Quit();
  capture.release();
  cv::destroyAllWindows();
  return 0;
}
