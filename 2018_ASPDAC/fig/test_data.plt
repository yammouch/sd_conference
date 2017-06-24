set terminal postscript eps enhanced
set size 0.6,0.6
set output "test_data.eps"
set grid
plot [0:40][0:120] \
 "test_data.dat" using 1:($2*100) with linespoints
