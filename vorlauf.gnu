set terminal pngcairo size 1024,768
set output 'ruecklauf.png'
set title "Heizung Rücklauf" 
set xdata time
set timefmt "%Y-%m-%d"
set yrange [ 20.00000 : 70.0000 ] noreverse nowriteback
plot 'ruecklauf.tsv' using 1:3 