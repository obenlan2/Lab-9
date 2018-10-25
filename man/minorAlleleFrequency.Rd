\name{minorAlleleFrequency}
\alias{minorAlleleFrequency}
\alias{filterSNPs}
\alias{mafHist}

\title{Minor Allele Frequency (MAF) Detection
}
\description{
A set of functions that allow for detection of SNP MAF, allow for filtering SNPs by MAF, and creating a histogram of SNP MAF.
}
\usage{
minorAlleleFrequency(SNPmat)
filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)
}

\arguments{
  \item{SNPmat}{
     Matrix of SNPs to used in the function.
}
  \item{minMAF}{
  Minimun MAF value of SNPs you'd like to keep. Default value is set to 0.05 but can be set to other values as needed
}
}
\value{
\item{minorAlleleFrequency}{
   Returns a vector of MAFs.
}
  \item{filterSNPs}{
   Returns a matrix in the same format as the inputed matrix but with columns removed for SNPs with very rare alleles.
}
  \item{mafHis}{
  Draws a histogram of SNP MAFs.
}
}
\author{Olivia Obenland
}

\examples{
SNPmat <- matrix(c(2,4,6,8,10,12,14,16,18,3,6,9,12,15,18), nrow = 5, ncol = 3)

minorAlleleFrequency(SNPmat)
filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)
}
