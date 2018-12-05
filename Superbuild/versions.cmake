# This maintains the links for all sources used by this superbuild.
# Simply update this file to change the revision.
# One can use different revision on different platforms.
# e.g.
# if (UNIX)
#   ..
# else (APPLE)
#   ..
# endif()

superbuild_set_revision(pythonqt
  GIT_REPOSITORY git://github.com/commontk/PythonQt.git
  GIT_TAG patched-8)

set(PARAVIEW_VERSION 5.4)
superbuild_set_revision(paraview
  GIT_REPOSITORY https://gitlab.kitware.com/bjacquet/paraview.git
  GIT_TAG origin/5.4CustomForVeloview-withPointCloudRepPlugin)

superbuild_set_revision(veloview
    SOURCE_DIR ${CMAKE_SOURCE_DIR}/..
    DOWNLOAD_COMMAND "")

if (WIN32)
  superbuild_set_revision(pcap
    GIT_REPOSITORY git://github.com/patmarion/winpcap.git
    GIT_TAG master)
else()
  superbuild_set_revision(pcap
    URL "http://www.tcpdump.org/release/libpcap-1.4.0.tar.gz"
    URL_MD5 "56e88a5aabdd1e04414985ac24f7e76c")
endif()

superbuild_set_revision(eigen
  URL http://vtk.org/files/support/eigen-3.1.2.tar.gz
  URL_MD5 bb639388192cb80f1ee797f5dbdbe74f)

superbuild_set_revision(liblas
  URL     "http://www.paraview.org/files/dependencies/libLAS-1.8.1.tar.bz2"
  URL_MD5 2e6a975dafdf57f59a385ccb87eb5919)
