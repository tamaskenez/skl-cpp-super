cmake_minimum_required(VERSION 3.0)
project(super-sklcpp)

if(NOT EXISTS "$ENV{CAKE_ROOT}/Cake.cmake")
	message(FATAL_ERROR "Set the CAKE_ROOT env var to root of the Cake installation (or run init.sh)")
endif()

include($ENV{CAKE_ROOT}/Cake.cmake)

cake_pkg(CLONE URL https://github.com/tamaskenez/sx.git DESTINATION sx)
cake_pkg(CLONE URL https://github.com/tamaskenez/skl-cpp.git DESTINATION skl-cpp)

add_subdirectory(sx)
add_subdirectory(skl-cpp)
