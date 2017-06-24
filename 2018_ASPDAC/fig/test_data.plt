set terminal postscript eps enhanced
set size 0.4,0.4
set xlabel "# of schematic patterns for training"
set ylabel "rate of success [%]"
set output "test_data.eps"
set grid
plot [0:40][-10:110] \
 "test_data.dat" using 1:($2*100) with linespoints \
 linewidth 5 pointsize 2 pointtype 7 notitle
