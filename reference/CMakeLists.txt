cmake_minimum_required(VERSION 3.7)
project(modtran Fortran)
set(CMAKE_FC_COMPILER gfortran)
set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR})
add_compile_options(-ffpe-trap=invalid,zero,overflow -g -fbacktrace)# -fmax-errors=5)

add_executable(testmodtran dpdisort.f driver.server.f stdmdl.f d1mach.f dplinpak.f modtran3.1.f modtran3.2.f bmtran.f)
add_executable(mktape mktape5.f)
install(TARGETS testmodtran mktape)
enable_testing()

add_test(NAME Fortran COMMAND testmodtran)


