gcl https://github.com/facebookresearch/faiss.git ~/repo/faiss
pac openblas swig
cd ~/repo/faiss
cp example_makefiles/makefile.inc.Linux makefile.inc
# update makefile.inc for openblas and python3 config
make all
make py
p tutorial/python/1-Flat.py
