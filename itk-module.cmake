set(DOCUMENTATION "A simple Image Viewer using VTK, it requires ITKVtkGlue")

itk_module(ITKVTKImageViewer
  DEPENDS
    ITKImageFunction
    ITKFFT
    ITKRegistrationCommon
    ITKConvolution
    ITKVtkGlue
  TEST_DEPENDS
    ITKTestKernel
  EXCLUDE_FROM_DEFAULT
  DESCRIPTION
  "${DOCUMENTATION}"
  )
