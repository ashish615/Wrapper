LIB_DIR = lib

defult: pyhello

pyhello: setup.py pyhello.pyx $(LIB_DIR)/libhello.a
	python setup.py build_ext --inplace && rm -f pyhello.cpp && rm -Rf build

$(LIB_DIR)/libhello.a:
	make -C $(LIB_DIR) libhello.a
clean:
	rm -rf build *.so dist *.egg-info
	
