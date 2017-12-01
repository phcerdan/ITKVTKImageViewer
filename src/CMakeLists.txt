set(ITKVtkImageViewer_SRCS
  runViewImage.cxx
  )
### generating libraries
itk_module_add_library( ITKVtkImageViewer ${ITKVtkImageViewer_SRCS})

add_executable(runViewImage ${ITKVtkImageViewer_LIBRARIES})
