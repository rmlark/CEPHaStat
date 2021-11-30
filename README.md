# CEPHaStat
R functions used by the CEPHaS project

This repository contains the following

File: CEPHaStat_3.2.R  An ASCII-format R file containing the CEPHaStat functions (v 3.2) and functions which they call.

File: CEPHaStat_v3.pdf  A PDF describing the key CEPHaStat functions in R help style.  The dependencies are also listed.

File: CEPHaStat_Soil_Physics.pdf  A PDF describing the CEPHaStat functions for soil physics in more depth and with some worked examples

File: Soil Physics Examples.R  An R script containing the code for the examples in the document above

Files:  wrcExample.dat, wrcZambia.dat, wrcZimbabwe.dat :  the three data files used by Soil Physics Examples.R

File: CEPHaStat_3.2_examples.pdf  A PDF describing the use of the mean.censor function in R to estimate the mean of a censored (left or right) (log) normal variable

File: censor_trial.R  An R script with the examples in the above document

File: thickness.dat  A data file with observations from sample sites on soil thickness in cm.  The largest measureable thickness is 99cm, so observations with this 
value are, in effect, censored observations where thickness >=99cm.
