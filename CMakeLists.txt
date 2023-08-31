cmake_minimum_required(VERSION 3.22)

project(image_downloader VERSION 1.0.0 LANGUAGES CXX)

#set(CMAKE_PREFIX_PATH "/home/artregrv/Qt/6.5.2/gcc_64")

find_package(Qt6 COMPONENTS Quick Gui REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(${PROJECT_NAME}
    src/main.cpp
    src/main.qrc
    src/downloader/downloader.h
    src/downloader/downloader.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Quick
    Qt6::Gui
)

