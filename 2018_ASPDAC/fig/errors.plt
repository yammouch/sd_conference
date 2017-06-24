set terminal postscript eps enhanced
set size 0.4,0.4
set xlabel "training iteration [10^3]"
set ylabel "sum of squared errors"
set logscale y
set output "errors.eps"
set grid
plot [0:11] \
 "errors.dat" using ($2/1000):4 with lines \
 linewidth 3 notitle
