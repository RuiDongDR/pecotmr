% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/raiss.R
\name{raiss}
\alias{raiss}
\title{Robust and accurate imputation from summary statistics}
\usage{
raiss(
  ref_panel,
  known_zscores,
  LD_matrix,
  lamb = 0.01,
  rcond = 0.01,
  R2_threshold = 0.6,
  minimum_ld = 5,
  verbose = TRUE
)
}
\arguments{
\item{ref_panel}{A data frame containing 'chrom', 'pos', 'variant_id', 'A1', and 'A2'.}

\item{known_zscores}{A data frame containing 'chrom', 'pos', 'variant_id', 'A1', 'A2', and 'z' values.}

\item{LD_matrix}{Either a square matrix or a list of matrices for LD blocks.}

\item{lamb}{Regularization term added to the diagonal of the LD_matrix.}

\item{rcond}{Threshold for filtering eigenvalues in the pseudo-inverse computation.}

\item{R2_threshold}{R square threshold below which SNPs are filtered from the output.}

\item{minimum_ld}{Minimum LD score threshold for SNP filtering.}

\item{verbose}{Logical indicating whether to print progress information.}
}
\value{
A list containing filtered and unfiltered results, and filtered LD matrix.
}
\description{
This function is a part of the statistical library for SNP imputation from:
https://gitlab.pasteur.fr/statistical-genetics/raiss/-/blob/master/raiss/stat_models.py
It is R implementation of the imputation model described in the paper by Bogdan Pasaniuc,
Noah Zaitlen, et al., titled "Fast and accurate imputation of summary
statistics enhances evidence of functional enrichment", published in
Bioinformatics in 2014.
}
\details{
This function can process either a single LD matrix or a list of LD matrices for different blocks.
For a list of matrices, it processes each block separately and combines the results.
}
