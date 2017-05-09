add_library(nice1 STATIC Ops1.cpp)

add_subdirectory(ops2)
include_directories(ops2)

install(TARGETS nice1 DESTINATION bin)
install(FILES Ops1.h DESTINATION include)