#ifndef DISPLAY_HPP
#define DISPLAY_HPP

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <stdexcept>

#include <opencv4/opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>

using namespace cv;
class Video
{
public:
    Video(char const* filename)
    {
        capture = VideoCapture(filename);
    }

    Mat GetFrame()
    {
        Mat frame;
        capture >> frame;
        return frame;
    }
private:
    VideoCapture capture;
};

struct Display 
{
    Display(){this->Initialize();}

    void Initialize()
    {

        if(SDL_Init(SDL_INIT_VIDEO) < 0)
            throw std::runtime_error("Error initializing SDL2");

        IMG_Init(IMG_INIT_PNG);

        window = SDL_CreateWindow("AUV Display", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 480, 480, SDL_WINDOW_SHOWN);
        if(window == 0)
            throw std::runtime_error("Could not make SDL2 Window");
        renderer = SDL_CreateRenderer(window, -1, 0);
    }

    void Destroy()
    {
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);

        window = 0;
        renderer = 0;
    }

    SDL_Texture* CVToSDL(const cv::Mat& matrix)
    {
        SDL_Texture* tex = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_BGR24, SDL_TEXTUREACCESS_STATIC, matrix.cols, matrix.rows);
        SDL_UpdateTexture(tex, 0, (void*)matrix.data, matrix.step1());
        return tex;
    }

    void HandleEvents()
    {
        SDL_Event e;
        while(SDL_PollEvent(&e) != 0)
        {
            if(e.type == SDL_QUIT || e.type == SDL_WINDOWEVENT && e.window.event == SDL_WINDOWEVENT_CLOSE)
            {
                this->Destroy();
                return;            
            }
        }
        SDL_RenderClear(renderer);   
    }

    void PlayVideo(char const* fname)
    {
        Video video(fname);

        for(;;)
        {
            cv::Mat frame = video.GetFrame();
            if(frame.empty()) break;
            this->DrawFrame(CVToSDL(frame));
        }
    }

    SDL_Texture* LoadImage(char const* filename)
    {
        SDL_Surface* surface = IMG_Load(filename);
        SDL_Texture* texture = SDL_CreateTextureFromSurface(renderer, surface);
        return texture;
    }

    void DrawFrame(SDL_Texture* texture)
    {
        if(window == 0 || renderer == 0) return;

        SDL_RenderClear(renderer);
        SDL_RenderCopy(renderer, texture,0,0);
        SDL_RenderPresent(renderer);
    }

public:
    SDL_Window* window = 0;
    SDL_Renderer* renderer = 0;
};




#endif
