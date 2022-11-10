from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
example_extension = Extension(
    name="pyhello",
    sources=["pyhello.pyx"],
    libraries=["hello"],
    library_dirs=["lib"],
    include_dirs=["lib"],
    language="c++"
) 
setup(
    name="pyhello",
    ext_modules=cythonize([example_extension]),
    #language="c++"             # generate C++ code

)
