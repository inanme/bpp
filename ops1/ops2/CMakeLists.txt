add_library(nice2 STATIC Ops2.cpp)

install(TARGETS nice2 DESTINATION bin)
install(FILES Ops2.h DESTINATION include)