************************************************************************
file with basedata            : mf44_.bas
initial value random generator: 1687342505
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  259
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       36        4       36
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   9  10
   3        3          2          20  21
   4        3          1           5
   5        3          2           7   8
   6        3          2          17  30
   7        3          1          14
   8        3          3          11  12  16
   9        3          1          13
  10        3          3          12  13  15
  11        3          3          18  23  25
  12        3          1          27
  13        3          3          19  26  28
  14        3          2          15  23
  15        3          2          19  21
  16        3          1          31
  17        3          3          20  25  26
  18        3          2          22  27
  19        3          3          20  24  25
  20        3          1          27
  21        3          3          22  24  28
  22        3          1          26
  23        3          2          24  28
  24        3          1          30
  25        3          1          31
  26        3          2          29  31
  27        3          1          29
  28        3          2          29  30
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       0    9   10    6
         2     5       0    7    7    6
         3    10       7    0    6    5
  3      1     4       2    0    9   10
         2     6       2    0    8   10
         3     7       0    5    3    9
  4      1     2       0   10    6    9
         2     9       0    9    5    8
         3    10       6    0    5    7
  5      1     5       0    4    3    2
         2     9       2    0    2    2
         3    10       2    0    1    1
  6      1     6       0    2    9    5
         2     7       0    1    6    4
         3     8       8    0    4    3
  7      1     2      10    0    3    9
         2     9       9    0    2    5
         3    10       9    0    2    1
  8      1     5       8    0    5    9
         2     6       2    0    5    9
         3     8       0    5    4    8
  9      1     2       5    0    9   10
         2     4       3    0    7    8
         3     9       0   10    7    8
 10      1     1       9    0   10    3
         2     3       0    8    6    3
         3     9       0    2    2    2
 11      1     8       4    0    3   10
         2     9       0    3    3    9
         3    10       3    0    2    8
 12      1     5       0   10    6    4
         2     5       5    0    8    5
         3     6       1    0    4    2
 13      1     1       0    7    2    6
         2     6       0    5    2    3
         3     6       6    0    1    3
 14      1     2       8    0    8    7
         2     7       6    0    6    6
         3     8       0    2    6    5
 15      1     1       0    4    5    9
         2     2       0    4    3    4
         3    10       5    0    3    2
 16      1     1       9    0    8    7
         2     2       0    2    6    4
         3     9       0    2    5    1
 17      1     2       4    0    8    6
         2     4       4    0    8    4
         3     7       0    1    3    3
 18      1     4       8    0    2    5
         2     7       0    8    1    3
         3    10       6    0    1    3
 19      1     5       6    0    7    5
         2     6       0    7    7    4
         3     8       0    5    6    3
 20      1     1       0    4    8    2
         2     3       3    0    6    2
         3    10       0    3    3    2
 21      1     3       0    5    5    4
         2     5       6    0    4    4
         3     8       6    0    2    2
 22      1     2       6    0    4    6
         2     7       4    0    4    4
         3     9       3    0    2    4
 23      1     5       0    7    7    7
         2     9       9    0    7    6
         3    10       0    4    5    6
 24      1     4       7    0    4    8
         2     7       5    0    3    7
         3     9       0    6    3    5
 25      1     1       5    0    7    3
         2     3       1    0    6    3
         3     7       0    8    6    1
 26      1     2       0    7    4   10
         2     6       8    0    3    9
         3     7       6    0    2    9
 27      1     8       0    9    7    4
         2     8       0    9    6    8
         3     8       6    0    6    6
 28      1     1       0    5    7    8
         2     2       6    0    5    5
         3     8       3    0    4    2
 29      1     1       3    0    5    6
         2     8       0   10    4    5
         3    10       0    9    3    3
 30      1     2       6    0    8    7
         2     6       5    0    7    7
         3     8       0    6    6    7
 31      1     8       2    0    4   10
         2     9       0    5    2    9
         3    10       0    4    1    9
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   29   35  147  165
************************************************************************
