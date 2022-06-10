g++ meshtorimd.cpp rimd.cpp mesh.cpp -o meshtorimd
g++ rimdtomesh.cpp rimd.cpp mesh.cpp -o rimdtomesh
sudo mv meshtorimd /usr/local/bin
sudo mv rimdtomesh /usr/local/bin
