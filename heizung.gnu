# Heizung Vorlauf
set terminal pngcairo size 1024,768
set output 'vorlauf.png'
set title "Heizung Vorlauf" 
set xdata time
set timefmt "%Y-%m-%d"
set yrange [ 20.00000 : 70.0000 ] noreverse nowriteback
plot 'vorlauf.tsv' using 1:3 

# Heizung Vorlauf
set output 'ruecklauf.png'
set title "Heizung Rücklauf" 
set xdata time
set timefmt "%Y-%m-%d"
set yrange [ 20.00000 : 70.0000 ] noreverse nowriteback
plot 'ruecklauf.tsv' using 1:3 

set output 'aussen.png'
set title "Heizung Rücklauf" 
set xdata time
set timefmt "%Y-%m-%d"
set yrange [ -20.00000 : 40.0000 ] noreverse nowriteback
plot 'aussen.tsv' using 1:3 

