set terminal pdfcairo color solid font "sans, 7" linewidth 2 size 20cm,15cm
set output "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corrplot_simple.pdf"
set logscale x
set title "object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" title "simulation data" with points
set terminal wxt font "sans, 8"
set output
set logscale x
set title "object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" title "simulation data" with points
pause -1
