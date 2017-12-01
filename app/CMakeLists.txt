set(ITKVTKImageViewer_SRCS
  runViewImage.cxx
  )

add_executable(runViewImage ${ITKVTKImageViewer_SRCS})
find_package(ITK REQUIRED)
message(STATUS "ITKLibraries: ${ITK_LIBRARIES}" )
include(${ITK_USE_FILE})
find_package(VTK REQUIRED)
include(${VTK_USE_FILE})
message(STATUS "VTKLibraries: ${VTK_LIBRARIES}" )
target_link_libraries(runViewImage ${ITK_LIBRARIES} ${VTK_LIBRARIES})
target_include_directories(runViewImage PUBLIC ${CMAKE_SOURCE_DIR}/include)
