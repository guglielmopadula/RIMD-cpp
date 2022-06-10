# RIMD Representation

An implementation of [Efficient and Flexible Deformation Representation for
Data-Driven Surface Modeling](https://users.cs.cf.ac.uk/Yukun.Lai/papers/DeformationTOG2016.pdf) forked from [here](https://github.com/Humberto1015/libigl-rimd-representation]).


## Dependencies

The only dependencies are the C++ stl, [eigen](https://eigen.tuxfamily.org/index.php?title=Main_Page), [libigl](http://libigl.github.io/libigl/).


## Compile

To compile first add all the dependencies to che C++ compiler include path and then
```
sudo sh install.sh
```
This will compile the two programs and copy them to /usr/local/bin.


## How to run
Program 1:
```
meshtorimd mesh0.ply mesh1.ply rimd.txt
```
this will write the rimd feature to rimd.txt

Program 2:
```
meshtorimd mesh0.ply rimd.txt out.ply
```
this will reconstruct the mesh from the rimd to out.ply

