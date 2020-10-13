\name{NanoporeRNASeq}
\alias{NanoporeRNASeq}
\docType{package}
\title{NanoporeRNASeq package with long-read RNA sequencing data}
\description{
The NanoporeRNASeq package contains long-read RNA-Seq data generated using 
Oxford Nanopore Sequencing. The data consists of 6 samples from two human cell
lines (K562 and MCF7). Each of these cell lines has three replicates, with 1
direct RNA sequencing data and 2 cDNA sequencing data. Reads are aligned to 
chromosome 22 (Grch38) and stored as bam files. The original data is from the
SG-NEx project. Please see the package vignette for examples and use cases.
}
\details{
Data objects include:

\itemize{
\item {\link{K562MCF7Samples}} - sample information of the bam files
\item {\link{HsChr22HalfBambuAnnotation}} - annotation GRangesList}


For detailed information on usage, see the package vignette, by typing
{vignette("NanoporeRNASeq")}, or the workflow linked to on the first page
of the vignette.

}

\author{
Ying Chen, Yuk Kei Wan, Jonathan Göke
}
\keyword{package}
