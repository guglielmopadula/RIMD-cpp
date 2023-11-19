# RIMD Representation

An implementation of [Efficient and Flexible Deformation Representation for
Data-Driven Surface Modeling](https://users.cs.cf.ac.uk/Yukun.Lai/papers/DeformationTOG2016.pdf) forked from [here](https://github.com/Humberto1015/libigl-rimd-representation).


## Dependencies

The only dependencies are the C++ stl, [eigen](https://eigen.tuxfamily.org/index.php?title=Main_Page), [libigl](http://libigl.github.io/libigl/).


## Compile

Compile this project using the standard cmake routine:
```
    mkdir build
    cd build
    cmake ..
    make
```
This should find and build the dependencies and create two binaries `rimdtomesh_bin` and `meshtorimd_bin` .


## How to run
Program 1:
```
meshtorimd_bin mesh0.ply mesh1.ply rimd.txt
```
this will write the rimd feature to rimd.txt

Program 2:
```
meshtorimd_bin mesh0.ply rimd.txt out.ply
```
this will reconstruct the mesh from the rimd to out.ply

