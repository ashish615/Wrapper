# distutils: language = c++
# distutils: sources = lib/hello.cpp

cdef extern from "hello.h" namespace "test":
    void hello(const char *name)

def py_hello(name: bytes) -> None:
    hello(name)
