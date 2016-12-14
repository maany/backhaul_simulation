X = dlmread('of_connection.dat'); # matrix defining OF link existance Xi for each base station Bi
Y = dlmread('rf_fso_connection.dat'); # matric containing RF/FSO link existance Yi for each base satation Bi
PiO = dlmread('cost_of_link.dat');
PiH = dlmread('cost_rf_fso_link.dat');
node_names = strsplit(fileread('node_names.txt'),',');
adjacency_matrix = X + Y;
#planning_graph = graph(adjacency_matrix,node_names);

#optimal solution
printf("optimal planning solution is %d",optimal_planning(X,Y,PiO,PiH));
#of_only_planning
printf("of_only planning solution is %d",of_only_planning(X,PiO));
