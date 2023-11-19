#include <igl/readSTL.h>
#include <igl/read_triangle_mesh.h>
#include <igl/readPLY.h>
#include <igl/writePLY.h>


#include "rimd.h"
#include <igl/adjacency_list.h>
int main(int argc, char *argv[]){
    Eigen::MatrixXd V0;
    Eigen::MatrixXi F0;
    Eigen::MatrixXd V1;
    Eigen::MatrixXi F1;
    std::ifstream file;
    
    igl::readPLY(argv[1],V0,F0);
    Mesh mesh_0(V0, F0);
    RIMD rimd(mesh_0);
    rimd.deserialize(argv[2]);
    auto verts = rimd.solveReconstruct(rimd.features);
    bool a=igl::writePLY(argv[3],verts,F0);
    return 0;
}
