datafile1='sample.txt'

#ofst=0.02

set term postscript eps enhanced color "Helvetica" 18
set out 'sample.ps'

set style line 1 lt 1 lc "#ff0000" lw 2 pt 7 ps 1.5
set style line 11 lt 1 lc "#000000" lw 2 pt 65 ps 1.5

set size ratio 0.7  # ratio r = height/width

set xlabel 'Omega (deg)' font "Helvetica,22"
#set encoding iso_8859_1
#set xlabel 'Q ({/Helvetica \305}^-^1)' font "Helvetica,22"
set ylabel 'Normalized intensity (arb units)' font "Helvetica,22"

#set xrange[0.1:0.5]
#set yrange[0:0.19]

#set xtics 0.05
set mxtics 5

#set ytics 0.02
set mytics 5


plot datafile1 u 1:($2/$5):($3/$5) w yer ls 1 not,datafile1 u 1:($2/$5) w p ls 11 not


