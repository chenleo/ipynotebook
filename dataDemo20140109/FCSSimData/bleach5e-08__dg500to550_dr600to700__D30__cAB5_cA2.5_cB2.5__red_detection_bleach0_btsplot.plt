dt_corr=   0.0000200000
dt=   0.0000200000
set terminal pdfcairo color solid font "sans, 7" linewidth 2 size 20cm,15cm
set output "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_btsplot.pdf"
set xlabel "time [seconds]"
set ylabel "photon count [photons/20.000000us]"
set title "counts per corrtaumin, object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_bts.dat" using 1:($2*dt_corr/dt) with steps
set xlabel "time [seconds]"
set ylabel "photon count [photons/0.020000ms]"
set title "counts per bin time, object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_bts.dat" with steps
set xlabel "time [seconds]"
set ylabel "photon count [kcps]"
set title "counts, object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_bts.dat" using 1:(($2)/0.000020/1000.0) with steps
set terminal wxt font "sans, 8"
set output
set xlabel "time [seconds]"
set ylabel "photon count [photons/20.000000us]"
set title "counts per corrtaumin, object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_bts.dat" using 1:($2*dt_corr/dt) with steps
pause -1
set xlabel "time [seconds]"
set ylabel "photon count [photons/0.020000ms]"
set title "counts per bin time, object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_bts.dat" with steps
pause -1
set xlabel "time [seconds]"
set ylabel "photon count [kcps]"
set title "counts, object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_bts.dat" using 1:(($2)/0.000020/1000.0) with steps
pause -1
