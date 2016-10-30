#Benjamin Jones
#University of Illinois at Chicago
#Fall 2016
#bwjones2@uic.edu

library(igraph)
#creating a blank, 28x28 matrix, since there are n=28 nodes
cta_mat<-matrix(0,nrow=28,ncol=28)
colnames(cta_mat)<-c(1:28)
rownames(cta_mat)<-c(1:28)
#filling in the matrix with unweighted edges (1 if edge exists, else 0)
#cta_mat[1,1]<-0, cta_mat[1,3]<-1
for (i in 1:1){
cta_mat[1,3]<-1
cta_mat[3,1]<-1
cta_mat[2,3]<-1
cta_mat[3,2]<-1
cta_mat[3,5]<-1
cta_mat[5,3]<-1
cta_mat[5,4]<-1
cta_mat[4,5]<-1
cta_mat[5,6]<-1
cta_mat[6,5]<-1
cta_mat[6,7]<-1
cta_mat[7,6]<-1
cta_mat[6,15]<-1
cta_mat[15,6]<-1
cta_mat[7,14]<-1
cta_mat[14,7]<-1
cta_mat[7,13]<-1
cta_mat[13,7]<-1
cta_mat[13,14]<-1
cta_mat[14,13]<-1
cta_mat[13,15]<-1
cta_mat[15,13]<-1
cta_mat[13,16]<-1
cta_mat[16,13]<-1
cta_mat[14,17]<-1
cta_mat[17,14]<-1
cta_mat[15,16]<-1
cta_mat[16,15]<-1
cta_mat[15,20]<-1
cta_mat[20,15]<-1
cta_mat[20,21]<-1
cta_mat[21,20]<-1
cta_mat[21,22]<-1
cta_mat[22,21]<-1
cta_mat[22,19]<-1
cta_mat[19,22]<-1
cta_mat[22,25]<-1
cta_mat[25,22]<-1
cta_mat[25,19]<-1
cta_mat[19,25]<-1
cta_mat[25,24]<-1
cta_mat[24,25]<-1
cta_mat[25,23]<-1
cta_mat[23,25]<-1
cta_mat[25,26]<-1
cta_mat[26,25]<-1
cta_mat[25,27]<-1
cta_mat[27,25]<-1
cta_mat[16,19]<-1
cta_mat[19,16]<-1
cta_mat[28,19]<-1
cta_mat[19,28]<-1
cta_mat[19,18]<-1
cta_mat[18,19]<-1
cta_mat[18,17]<-1
cta_mat[17,18]<-1
cta_mat[12,10]<-1
cta_mat[10,12]<-1
cta_mat[11,10]<-1
cta_mat[10,11]<-1
cta_mat[10,8]<-1
cta_mat[8,10]<-1
cta_mat[9,8]<-1
cta_mat[8,9]<-1
cta_mat[8,13]<-1
cta_mat[13,8]<-1
}
cta_graph<-graph.adjacency(cta_mat,weighted=TRUE)
plot(cta_graph) #visual of the graph

shortest.paths(cta_graph, algorithm = "dijkstra")
#table displaing the distance (# of edges) between two nodes

shortest_paths(cta_graph, from=28, to=8)
#shows the exact path, node to node, from node X to node Y

#repeat the previous lines, but now with weighted edges
cta_wmat<-matrix(0,nrow=28,ncol=28)
colnames(cta_wmat)<-c(1:28)
rownames(cta_wmat)<-c(1:28)
#filling in the matrix with weighted edges (# if edge exists, else 0)
#cta_mat[1,1]<-0, cta_mat[1,3]<-9
for (i in 1:1){
  cta_wmat[1,3]<-9
  cta_wmat[3,1]<-9
  cta_wmat[2,3]<-13
  cta_wmat[3,2]<-13
  cta_wmat[3,5]<-25
  cta_wmat[5,3]<-25
  cta_wmat[5,4]<-18
  cta_wmat[4,5]<-18
  cta_wmat[5,6]<-3
  cta_wmat[6,5]<-3
  cta_wmat[6,7]<-11
  cta_wmat[7,6]<-11
  cta_wmat[6,15]<-11
  cta_wmat[15,6]<-11
  cta_wmat[7,14]<-9
  cta_wmat[14,7]<-9
  cta_wmat[7,13]<-2
  cta_wmat[13,7]<-2
  cta_wmat[13,14]<-2
  cta_wmat[14,13]<-2
  cta_wmat[13,15]<-1
  cta_wmat[15,13]<-1
  cta_wmat[13,16]<-4
  cta_wmat[16,13]<-4
  cta_wmat[14,17]<-1
  cta_wmat[17,14]<-1
  cta_wmat[15,16]<-2
  cta_wmat[16,15]<-2
  cta_wmat[15,20]<-1
  cta_wmat[20,15]<-1
  cta_wmat[20,21]<-6
  cta_wmat[21,20]<-6
  cta_wmat[21,22]<-1
  cta_wmat[22,21]<-1
  cta_wmat[22,19]<-4
  cta_wmat[19,22]<-4
  cta_wmat[22,25]<-3
  cta_wmat[25,22]<-3
  cta_wmat[25,19]<-3
  cta_wmat[19,25]<-3
  cta_wmat[25,24]<-22
  cta_wmat[24,25]<-22
  cta_wmat[25,23]<-24
  cta_wmat[23,25]<-24
  cta_wmat[25,26]<-23
  cta_wmat[26,25]<-23
  cta_wmat[25,27]<-21
  cta_wmat[27,25]<-21
  cta_wmat[16,19]<-7
  cta_wmat[19,16]<-7
  cta_wmat[28,19]<-8
  cta_wmat[19,28]<-8
  cta_wmat[19,18]<-3
  cta_wmat[18,19]<-3
  cta_wmat[18,17]<-3
  cta_wmat[17,18]<-3
  cta_wmat[12,10]<-18
  cta_wmat[10,12]<-18
  cta_wmat[11,10]<-20
  cta_wmat[10,11]<-20
  cta_wmat[10,8]<-18
  cta_wmat[8,10]<-18
  cta_wmat[9,8]<-46
  cta_wmat[8,9]<-46
  cta_wmat[8,13]<-6
  cta_wmat[13,8]<-6
}
wcta_graph<-graph.adjacency(cta_wmat,weighted=TRUE)
plot(wcta_graph) #will look the same as before

#weighted
shortest.paths(wcta_graph, algorithm = "dijkstra")
#table displaing the weighted distance (# of edges) between two nodes
shortest_paths(wcta_graph, from=28, to=8)
