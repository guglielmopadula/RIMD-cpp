#include <igl/readSTL.h>
#include <igl/read_triangle_mesh.h>
#include <igl/readPLY.h>

#include "rimd.h"
#include <igl/adjacency_list.h>
int main(int argc, char *argv[]){
    Eigen::MatrixXd V0;
    Eigen::MatrixXi F0;
    Eigen::MatrixXd V1;
    Eigen::MatrixXi F1;

    Eigen::MatrixXd N;
    std::ifstream file;
 
    igl::readPLY(argv[1],V0,F0);
    Mesh mesh_0(V0, F0);
    igl::readPLY(argv[2],V1,F1);
    Mesh mesh_1(V1, F1);
    RIMD rimd(mesh_0, mesh_1);
    rimd.serialize(argv[3]);
    return 0;
}
