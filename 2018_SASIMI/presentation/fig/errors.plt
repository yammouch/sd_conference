set terminal postscript eps enhanced
set size 0.25,0.25
#set xlabel "training iteration [10^3]"
#set ylabel "error"
set logscale y
set xtics 5
set mxtics 5
set ytics (1e-3, 2e-3 1, 5e-3 1, \
           1e-2, 2e-2 1, 5e-2 1, \
           1e-1, 2e-1 1, 5e-1 1, \
           1e0 , 2e0  1, 5e0  1, \
           1e1)
set output "errors.eps"
set format y "10^{%T}"
set grid xtics ytics mxtics mytics lt 1 lw 1, lt 0 lw 1
#set grid
plot [0:11][1e-3:1e1] \
 "errors.dat" using ($2/1000):4 with lines \
 linewidth 3 notitle
