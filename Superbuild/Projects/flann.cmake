superbuild_add_project(flann
  CMAKE_ARGS
   -DBUILD_EXAMPLES:BOOL=OFF
   -DBUILD_PYTHON_BINDINGS:BOOL=OFF
   -DBUILD_MATLAB_BINDINGS:BOOL=OFF
  )
