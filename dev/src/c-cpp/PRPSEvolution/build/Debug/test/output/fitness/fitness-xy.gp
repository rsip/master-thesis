#
# This plot generates the x-y view of the fitness plane
#
at(file, row, col) = system( sprintf("awk -v row=%d -v col=%d 'NR == row {print $col}' %s", row, col, file) )

set terminal pngcairo truecolor transparent background "#ffffff" enhanced font "arial,10" size 1200,600 
set macros

SETZOOM="centerx=at(fn,index+1,2);\
    centery=at(fn, index+1,3);\
    set xrange[centerx-.5:centerx+.5];\
    set yrange[centery-.5:centery+.5]"

############################################
f1="data/plane_".i."_0.dat"
f2="data/plane_".i."_1.dat"
f3="data/plane_".i."_2.dat"
f4="data/plane_".i."_3.dat"
f5="data/plane_".i."_4.dat"
f6="data/plane_".i."_5.dat"
f7="data/plane_".i."_6.dat"
f8="data/plane_".i."_7.dat"
f9="data/plane_".i."_8.dat"
f10="data/plane_".i."_9.dat"
f11="data/plane_".i."_10.dat"
f12="data/plane_".i."_11.dat"
f13="data/plane_".i."_12.dat"
f14="data/plane_".i."_13.dat"
f15="data/plane_".i."_14.dat"
f16="data/plane_".i."_15.dat"

reset

############################################

#set style line 1 linetype 1 linecolor rgb "#708090"  linewidth 1.000 pointtype 9 pointsize 1
SETSTYLE="set style line 1 lt 1 lc rgb '#000000' lw .5;\
    set style line 2 lt 1 lc rgb '#2f4f4f' lw 1"

############################################


set loadpath '~/dev/gnuplot-colorbrewer/diverging' \
 '~/dev/gnuplot-colorbrewer/qualitavive' \
 '~/dev/gnuplot-colorbrewer/sequential'

set dgrid3d 30,30,4

########################################################################
stats f1 u 1 name "A0" nooutput 
stats f2 u 1 name "A1" nooutput 
stats f3 u 1 name "A2" nooutput 
stats f4 u 1 name "A3" nooutput 
stats f5 u 1 name "A4" nooutput 
stats f6 u 1 name "A5" nooutput 
stats f7 u 1 name "A6" nooutput 
stats f8 u 1 name "A7" nooutput 
stats f9 u 1 name "A8" nooutput 
stats f10 u 1 name "A9" nooutput 
stats f11 u 1 name "A10" nooutput 
stats f12 u 1 name "A11" nooutput 
stats f13 u 1 name "A12" nooutput 
stats f14 u 1 name "A13" nooutput 
stats f15 u 1 name "A14" nooutput 
stats f16 u 1 name "A15" nooutput 
########################################################################

print "stats created"

########################################################################
set contour
set cntrparam levels incremental 0,50,1000
#set isosample 1, 1
unset surface 

set table 'data/processed/01.dat'
#splot f1 u 2:3:( $1/A0_max )
splot f1 u 2:3:1
unset table

set table 'data/processed/02.dat'
splot f2 u 2:3:1
unset table

set table 'data/processed/03.dat'
splot f3 u 2:3:1
unset table

set table 'data/processed/04.dat'
splot f4 u 2:3:1
unset table

set table 'data/processed/05.dat'
splot f5 u 2:3:1
unset table

set table 'data/processed/06.dat'
splot f6 u 2:3:1
unset table

set table 'data/processed/07.dat'
splot f7 u 2:3:1
unset table

set table 'data/processed/08.dat'
splot f8 u 2:3:1
unset table

set table 'data/processed/09.dat'
splot f9 u 2:3:1
unset table

set table 'data/processed/010.dat'
splot f10 u 2:3:1
unset table

set table 'data/processed/011.dat'
splot f11 u 2:3:1 
unset table

set table 'data/processed/012.dat'
splot f12 u 2:3:1
unset table

set table 'data/processed/013.dat'
splot f13 u 2:3:1
unset table

set table 'data/processed/014.dat'
splot f14 u 2:3:1
unset table

set table 'data/processed/015.dat'
splot f15 u 2:3:1
unset table

set table 'data/processed/016.dat'
splot f16 u 2:3:1
unset table
#######################################################################

set contour
set cntrparam levels discrete  0,1,5,10,40,50,100,200,500,1000
#set isosample 1, 1
unset surface 
########################################################################

set table 'data/processed/1.dat'
#splot f1 u 2:3:( $1/A0_max )
splot f1 u 2:3:1
unset table

set table 'data/processed/2.dat'
splot f2 u 2:3:1
unset table

set table 'data/processed/3.dat'
splot f3 u 2:3:1
unset table

set table 'data/processed/4.dat'
splot f4 u 2:3:1
unset table

set table 'data/processed/5.dat'
splot f5 u 2:3:1
unset table

set table 'data/processed/6.dat'
splot f6 u 2:3:1
unset table

set table 'data/processed/7.dat'
splot f7 u 2:3:1
unset table

set table 'data/processed/8.dat'
splot f8 u 2:3:1
unset table

set table 'data/processed/9.dat'
splot f9 u 2:3:1
unset table

set table 'data/processed/10.dat'
splot f10 u 2:3:1
unset table

set table 'data/processed/11.dat'
splot f11 u 2:3:1 
unset table

set table 'data/processed/12.dat'
splot f12 u 2:3:1
unset table

set table 'data/processed/13.dat'
splot f13 u 2:3:1
unset table

set table 'data/processed/14.dat'
splot f14 u 2:3:1
unset table

set table 'data/processed/15.dat'
splot f15 u 2:3:1
unset table

set table 'data/processed/16.dat'
splot f16 u 2:3:1
unset table
########################################################################

print "contour created"

reset 

#@SETSTYLE

set style line 1 lt 1 lc rgb '#000000' lw .5
set style line 2 lt 1 lc rgb "#2f4f4f" lw 1

set output "img/xy/a".i.".png"
set multiplot layout 3,5 rowsfirst title "Antenne ".i." x-y - view"

set style data lines

unset key
set tic scale 0
set view map
set dgrid3d 40, 40, 1

set contour base

#set palette negative 
set xrange[-10:10]
set yrange[-10:10]

set grid front

#load 'BrBG.plt'
load 'Greys.plt'
#unset xtics
#unset ytics

#NORM0="2:3:($1-A0_min)/(A0_max-A0_min)"
#NORM1="2:3:($1-A1_min)/(A1_max-A1_min)"
#NORM2="2:3:($1-A2_min)/(A2_max-A2_min)"
#NORM3="2:3:($1-A3_min)/(A3_max-A3_min)"
#NORM4="2:3:($1-A4_min)/(A4_max-A4_min)"
#NORM5="2:3:($1-A5_min)/(A5_max-A5_min)"
#NORM6="2:3:($1-A6_min)/(A6_max-A6_min)"
#NORM7="2:3:($1-A7_min)/(A7_max-A7_min)"
#NORM8="2:3:($1-A8_min)/(A8_max-A8_min)"
#NORM9="2:3:($1-A9_min)/(A9_max-A9_min)"
#NORM10="2:3:($1-A10_min)/(A10_max-A10_min)"
#NORM11="2:3:($1-A11_min)/(A11_max-A11_min)"
#NORM12="2:3:($1-A12_min)/(A12_max-A12_min)"
#NORM13="2:3:($1-A13_min)/(A13_max-A13_min)"
#NORM14="2:3:($1-A14_min)/(A14_max-A14_min)"
#NORM15="2:3:($1-A15_min)/(A15_max-A15_min)+A15_min"

NORM0="2:3:($1-A0_min)/(A0_max-A0_min)+A0_min"
NORM1="2:3:($1-A1_min)/(A1_max-A1_min)+A1_min"
NORM2="2:3:($1-A2_min)/(A2_max-A2_min)+A2_min"
NORM3="2:3:($1-A3_min)/(A3_max-A3_min)+A3_min"
NORM4="2:3:($1-A4_min)/(A4_max-A4_min)+A4_min"
NORM5="2:3:($1-A5_min)/(A5_max-A5_min)+A5_min"
NORM6="2:3:($1-A6_min)/(A6_max-A6_min)+A6_min"
NORM7="2:3:($1-A7_min)/(A7_max-A7_min)+A7_min"
NORM8="2:3:($1-A8_min)/(A8_max-A8_min)+A8_min"
NORM9="2:3:($1-A9_min)/(A9_max-A9_min)+A9_min"
NORM10="2:3:($1-A10_min)/(A10_max-A10_min)+A10_min"
NORM11="2:3:($1-A11_min)/(A11_max-A11_min)+A11_min"
NORM12="2:3:($1-A12_min)/(A12_max-A12_min)+A12_min"
NORM13="2:3:($1-A13_min)/(A13_max-A13_min)+A13_min"
NORM14="2:3:($1-A14_min)/(A14_max-A14_min)+A14_min"
NORM15="2:3:($1-A15_min)/(A15_max-A15_min)+A15_min"


plot f1 u @NORM0 with image, "data/processed/1.dat"  w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f1 u 2:3:( ($1==(A0_min)) ? "+" : "" ) with labels
plot f2 u @NORM1 with image, "data/processed/2.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f2 u 2:3:( ($1==(A1_min)) ? "+" : "" ) with labels
plot f3 u @NORM2 with image, "data/processed/3.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f3 u 2:3:( ($1==(A2_min)) ? "+" : "" ) with labels
plot f4 u @NORM3 with image, "data/processed/4.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f4 u 2:3:( ($1==(A3_min)) ? "+" : "" ) with labels
plot f5 u @NORM4 with image, "data/processed/5.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f5 u 2:3:( ($1==(A4_min)) ? "+" : "" ) with labels
plot f6 u @NORM5 with image, "data/processed/6.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f6 u 2:3:( ($1==(A5_min)) ? "+" : "" ) with labels
plot f7 u @NORM6 with image, "data/processed/7.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f7 u 2:3:( ($1==(A6_min)) ? "+" : "" ) with labels
plot f8 u @NORM7 with image, "data/processed/8.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f8 u 2:3:( ($1==(A7_min)) ? "+" : "" ) with labels
plot f9 u @NORM8 with image, "data/processed/9.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f9 u 2:3:( ($1==(A8_min)) ? "+" : "" ) with labels
plot f10 u @NORM9 with image, "data/processed/10.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f10 u 2:3:( ($1==(A9_min)) ? "+" : "" ) with labels
plot f11 u @NORM10 with image, "data/processed/11.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f11 u 2:3:( ($1==(A10_min)) ? "+" : "" ) with labels
plot f12 u @NORM11 with image, "data/processed/12.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f12 u 2:3:( ($1==(A11_min)) ? "+" : "" ) with labels
plot f13 u @NORM12 with image, "data/processed/13.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f13 u 2:3:( ($1==(A12_min)) ? "+" : "" ) with labels
plot f14 u @NORM13 with image, "data/processed/14.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f14 u 2:3:( ($1==(A13_min)) ? "+" : "" ) with labels
plot f15 u @NORM14 with image, "data/processed/15.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f15 u 2:3:( ($1==(A14_min)) ? "+" : "" ) with labels
#plot f16 u @NORM15 with image, "data/processed/16.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
#     f16 u 2:3:( ($1==(A15_min)) ? "+" : "" ) with labels

unset multiplot

##########################################################################

reset 

set output "img/xy/a".i."zoomed.png"
#set multiplot layout 4,4 rowsfirst title "Antenne ".i." x-y - view"
set multiplot layout 3,5 rowsfirst title "Antenne ".i." x-y - view"

set style data lines

unset key
set tic scale 0
set view map
set dgrid3d 40, 40, 1

set contour base

#set palette negative 


#load 'BrBG.plt'
load 'Greys.plt'
#unset xtics
#unset ytics

set grid front

fn=f1
index=A0_index_min
@SETZOOM
plot f1 u @NORM0  with image, "data/processed/1.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f1 u 2:3:( ($1==(A0_min)) ? "+" : "" ) with labels 

fn=f2
index=A1_index_min
@SETZOOM
plot f2 u @NORM1  with image, "data/processed/2.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f2 u 2:3:( ($1==(A1_min)) ? "+" : "" ) with labels 

fn=f3
index=A2_index_min
@SETZOOM
plot f3 u @NORM2  with image, "data/processed/3.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f3 u 2:3:( ($1==(A2_min)) ? "+" : "" ) with labels 

fn=f4
index=A3_index_min
@SETZOOM
plot f4 u @NORM3  with image, "data/processed/4.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f4 u 2:3:( ($1==(A3_min)) ? "+" : "" ) with labels 

fn=f5
index=A4_index_min
@SETZOOM
plot f5 u @NORM4  with image, "data/processed/5.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f5 u 2:3:( ($1==(A4_min)) ? "+" : "" ) with labels 

fn=f6
index=A5_index_min
@SETZOOM
plot f6 u @NORM5  with image, "data/processed/6.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f6 u 2:3:( ($1==(A5_min)) ? "+" : "" ) with labels 

fn=f7
index=A6_index_min
@SETZOOM
plot f7 u @NORM6  with image, "data/processed/7.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f7 u 2:3:( ($1==(A6_min)) ? "+" : "" ) with labels 

fn=f8
index=A7_index_min
@SETZOOM
plot f8 u @NORM7  with image, "data/processed/8.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f8 u 2:3:( ($1==(A7_min)) ? "+" : "" ) with labels

fn=f9
index=A8_index_min
@SETZOOM
plot f9 u @NORM8  with image, "data/processed/9.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f9 u 2:3:( ($1==(A8_min)) ? "+" : "" ) with labels

fn=f10
index=A9_index_min
@SETZOOM
plot f10 u @NORM9  with image, "data/processed/10.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f10 u 2:3:( ($1==(A9_min)) ? "+" : "" ) with labels

fn=f11
index=A10_index_min
@SETZOOM
plot f11 u @NORM10 with image, "data/processed/11.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f11 u 2:3:( ($1==(A10_min)) ? "+" : "" ) with labels

fn=f12
index=A11_index_min
@SETZOOM
plot f12 u @NORM11 with image, "data/processed/12.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f12 u 2:3:( ($1==(A11_min)) ? "+" : "" ) with labels

fn=f13
index=A12_index_min
@SETZOOM
plot f13 u @NORM12 with image, "data/processed/13.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f13 u 2:3:( ($1==(A12_min)) ? "+" : "" ) with labels

fn=f14
index=A13_index_min
@SETZOOM
plot f14 u @NORM13 with image, "data/processed/14.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f14 u 2:3:( ($1==(A13_min)) ? "+" : "" ) with labels

fn=f15
index=A14_index_min
@SETZOOM
plot f15 u @NORM14 with image, "data/processed/15.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
     f15 u 2:3:( ($1==(A14_min)) ? "+" : "" ) with labels

#fn=f16
#index=A15_index_min
#@SETZOOM
#plot f16 u @NORM15 with image, "data/processed/16.dat" w l lt -1 lw 1 lc rgb "#2f4f4f",\
#     f16 u 2:3:( ($1==(A15_min)) ? "+" : "" ) with labels

unset multiplot
i=i+1
if( i < t ) reread
i=0

quit
