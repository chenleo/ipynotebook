g(t,N,tauD,gamma,alpha)=1.0+1.0/N/(1.0+((t/tauD)**alpha))/sqrt(1.0+((t/tauD)**alpha)/gamma/gamma)
N=1
tauD=100e-6
gamma=2.678894
Nf=1
tauDf=100e-6
gammaf=2.678894
Na=1
tauDa=100e-6
gammaa=2.678894
alphaa=1
wxy=0.384111
fit g(x, N, tauD, gamma, 1) "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" via N, tauD,gamma
fit g(x, Nf, tauDf, gammaf, 1) "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" via Nf, tauDf
Veffa=sqrt(pi*pi*pi)*wxy*wxy*wxy*1e-15*gammaa
Vefff=sqrt(pi*pi*pi)*wxy*wxy*wxy*1e-15*gammaf
Veff=sqrt(pi*pi*pi)*wxy*wxy*wxy*1e-15*gamma
set terminal pdfcairo color solid font "sans, 7" linewidth 2 size 20cm,15cm
set output "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corrplot.pdf"
set logscale x
set title "object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" title "simulation data" with points, g(x,N,tauD,gamma,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",N, tauD*1e6, gamma, wxy*wxy/4.0/tauD, N/6.022e14/Veff), g(x,Nf,tauDf,gammaf,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",Nf, tauDf*1e6, gammaf, wxy*wxy/4.0/tauDf, Nf/6.022e14/Vefff)
Na=Nf
tauDa=tauDf
fit g(x, Na, tauDa, gammaa, alphaa) "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" via Na, tauDa, alphaa
set logscale x
set title "object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" title "simulation data" with points, g(x,N,tauD,gamma,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",N, tauD*1e6, gamma, wxy*wxy/4.0/tauD, N/6.022e14/Veff), g(x,Nf,tauDf,gammaf,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",Nf, tauDf*1e6, gammaf, wxy*wxy/4.0/tauDf, Nf/6.022e14/Vefff), g(x,Na,tauDa,gammaa,alphaa) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, alpha=%.3f, D=%.3f um^2/s, c=%.3f nM",Na, tauDa*1e6, gammaa,alphaa,  wxy*wxy/4.0/tauDa, Na/6.022e14/Veffa)
set terminal wxt font "sans, 8"
set output
set logscale x
set title "object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" title "simulation data" with points, g(x,N,tauD,gamma,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",N, tauD*1e6, gamma, wxy*wxy/4.0/tauD, N/6.022e14/Veff), g(x,Nf,tauDf,gammaf,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",Nf, tauDf*1e6, gammaf, wxy*wxy/4.0/tauDf, Nf/6.022e14/Vefff)
pause -1
Na=Nf
tauDa=tauDf
fit g(x, Na, tauDa, gammaa, alphaa) "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" via Na, tauDa, alphaa
set logscale x
set title "object description: red_detection_bleach0_"
plot "bleach5e-08__dg500to550_dr600to700__D30__cAB5_cA2.5_cB2.5__red_detection_bleach0_corr.dat" title "simulation data" with points, g(x,N,tauD,gamma,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",N, tauD*1e6, gamma, wxy*wxy/4.0/tauD, N/6.022e14/Veff), g(x,Nf,tauDf,gammaf,1) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, D=%.3f um^2/s, c=%.3f nM",Nf, tauDf*1e6, gammaf, wxy*wxy/4.0/tauDf, Nf/6.022e14/Vefff), g(x,Na,tauDa,gammaa,alphaa) title sprintf("fit N=%.3f, tauD=%.3f uS, gamma=%.3f, alpha=%.3f, D=%.3f um^2/s, c=%.3f nM",Na, tauDa*1e6, gammaa,alphaa,  wxy*wxy/4.0/tauDa, Na/6.022e14/Veffa)
pause -1
