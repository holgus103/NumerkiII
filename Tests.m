a1 = [1 2 0 0 0 0
      7 6 2 0 0 0
      0 3 4 2 0 0
      0 0 9 2 1 0
      0 0 0 1 6 8
      0 0 0 0 2 1];
 
b1 = [3 15 9 12 15 3];
 
val = GeppForBandMatrixes(a1, b1, 1, 1);
 
% 1*x1 + 2*x2 = 1
% 7*x1 + 6*x2 + 2*x3 = 6
% 3*x2 + 4*x3 + 2*x4 = 7
% 9*x3 + 2*x4 + 1*x5 = 9 
% 1*x4 + 6*x5 + 8*x6 = 21
% 2*x5 + 1*x6 = 3
a2 = [1 2 0 0 0 0
      7 6 2 0 0 0
      0 3 4 2 0 0
      0 0 9 2 1 0
      0 0 0 1 6 8
      0 0 0 0 2 1];
 
b2 = [1 6 7 9 21 3];

val = GeppForBandMatrixes(a2, b2, 1, 1);


a3 = [1 2 3 4 5 6
      7 6 2 0 0 0
      0 3 4 2 0 0
      1 0 9 2 1 0
      11 0 0 1 6 8
      2 0 0 0 2 1];
 
b3 = [21 15 9 13 26 5];

val = GeppForBandMatrixes(a3, b3, 5, 5);


a4 = [2 4 1
      1 1 1
      4 1 7];
 
b4 = [7, 10, 12];

val = GeppForBandMatrixes(a4, b4, 2, 2);

a5 = [1 1 3
      2 2 6
      4 1 7];
 
b5 = [10, 20, 12];

val = GeppForBandMatrixes(a5, b5, 2, 2);

a6 = [2 6 4
      1 3 2
      5 3 7];
 
b6 = [5, 3, 2];

val = GeppForBandMatrixes(a6, b6, 2, 2);

a7 = [1 1 4
      -4 2 8
      3 3 12];
 
b7 = [5, 3, 2];

val = GeppForBandMatrixes(a7, b7, 2, 2);
