### =========================================================================
### NanoporeRNAseq metadata 
### -------------------------------------------------------------------------
###

meta <- data.frame(
  Title = c("K562_directcDNA_replicate1",
            "K562_directcDNA_replicate4", 
            "K562_directRNA_replicate6",
            "MCF7_directcDNA_replicate1", 
            "MCF7_directcDNA_replicate3",
            "MCF7_directRNA_replicate4"),
  Description = c("Nanopore direct cDNA sequencing bam reads of K562", 
                  "Nanopore direct cDNA sequencing bam reads of K562",
                  "Nanopore direct RNA sequencing bam reads of K562",
                  "Nanopore direct cDNA sequencing bam reads of MCF7",
                  "Nanopore direct cDNA sequencing bam reads of MCF7",
                  "Nanopore direct RNA sequencing bam reads of MCF7"),
  BiocVersion = "3.11",
  Genome = "GRCh38", 
  SourceType = "BAM", 
  SourceUrl = "https://github.com/GoekeLab/sg-nex-data",
  SourceVersion = "0.1.0",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  Coordinate_1_based = TRUE,
  DataProvider = "SGNex",
  Maintainer = "The Singapore Nanopore Expression Project (SG-NEx)  <gokej@gis.a-star.edu.sg>",
  RDataClass = "vector" ,
  DispatchClass = "BamFile",
  RDataPath = c(paste("NanoporeRNASeq/inst/extdata/K562_directcDNA_replicate1.bam",
                      "NanoporeRNASeq/inst/extdata/K562_directcDNA_replicate1.bam.bai",sep=":"),
                paste("NanoporeRNASeq/inst/extdata/K562_directcDNA_replicate4.bam",
                       "NanoporeRNASeq/inst/extdata/K562_directcDNA_replicate4.bam.bai",sep=":"), 
                paste("NanoporeRNASeq/inst/extdata/K562_directRNA_replicate6.bam",
                       "NanoporeRNASeq/inst/extdata/K562_directRNA_replicate6.bam.bai",sep=":"),
                paste("NanoporeRNASeq/inst/extdata/MCF7_directcDNA_replicate1.bam",
                       "NanoporeRNASeq/inst/extdata/MCF7_directcDNA_replicate1.bam.bai",sep=":"), 
                paste("NanoporeRNASeq/inst/extdata/MCF7_directcDNA_replicate3.bam",
                       "NanoporeRNASeq/inst/extdata/MCF7_directcDNA_replicate3.bam.bai",sep=":"),
                paste("NanoporeRNASeq/inst/extdata/MCF7_directRNA_replicate4.bam",
                       "NanoporeRNASeq/inst/extdata/MCF7_directRNA_replicate4.bam.bai",sep=":")),
  Tags = "",
  Notes = ""
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
