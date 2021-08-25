set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

if(NOT LLVM_ENABLE_RTTI)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

add_library(LoopFeatures SHARED loopExtractor.cpp Pass.cpp)

target_link_libraries(LoopFeatures
    PRIVATE nlohmann_json::nlohmann_json
    "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
