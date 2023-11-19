# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-src"
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-build"
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix"
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix/tmp"
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp"
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix/src"
  "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/cyberguli/RIMD-cpp/build/_deps/eigen-subbuild/eigen-populate-prefix/src/eigen-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
