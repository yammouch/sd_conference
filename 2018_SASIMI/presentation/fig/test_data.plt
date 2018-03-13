set terminal postscript eps enhanced
set size 0.25,0.25
#set xlabel "# of schematic patterns for training"
#set ylabel "rate of success [%]"
set xtics 20
set ytics 50
set mxtics 4
set mytics 5
set output "test_data.eps"
set grid xtics ytics mxtics mytics \
 lt 1 lw 1, lt 0 lw 1
plot [0:40][-10:110] \
 "test_data.dat" using 1:($2*100) with linespoints \
 linewidth 5 pointsize 1 pointtype 7 notitle
