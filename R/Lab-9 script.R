source('SNPfreq_functions.R')
prompt(minorAlleleFrequency) #makes .RD file

SNPmat <- matrix(c(2,4,6,8,10,12,14,16,18,3,6,9,12,15,18), nrow = 5, ncol = 3)
minorAlleleFrequency(SNPmat)
filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)

install.packages("SNPfreq_0.0.tar.gz", repos = NULL)
library(SNPfreq)
?mafHist
getwd()
