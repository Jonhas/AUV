CXX=g++ 
CFLAGS=-g -Wall -Wextra -O2 -std=c++20 
OPENCV=`pkg-config opencv4 --cflags --libs`


SDL_DEVELOPMENT=/usr/include/SDL2
SDL_LIBS= ${shell sdl2-config --libs} -lSDL2_image -lm
SDL_FLAGS= ${shell sdl2-config --cflags} 

# SDL library check 
ifeq (${wildcard ${SDL_DEVELOPMENT}},)
	${error SDL2 development package ${SDL_DEVELOPMENT_INC} not found}
endif 

TARGET_EXEC=auv.out 

SOURCES = ${wildcard SLAM/src/*.cpp}
HEADERS = ${wildcard SLAM/include/*.hpp}
OBJECTS = ${SOURCES:.cpp=.o}
BUILD_DIR = build/


clean:
	rm -rf ${OBJECTS} ${PROJNAME}

lint:
	clang-tidy -header-filter=.* --extra-arg=-std=c++20 ${SOURCES} ${HEADERS}

format:
	clang-format -i -style=llvm ${SOURCES} ${HEADERS}


% : %.cpp 
	${CXX} ${CFLAGS} ${SDL_FLAGS} -o $@ $< ${OPENCV} ${SDL_LIBS}
