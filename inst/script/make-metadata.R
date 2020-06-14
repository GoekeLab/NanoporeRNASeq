### =========================================================================
### NanoporeRNAseq metadata 
### -------------------------------------------------------------------------
###

meta <- data.frame(
  Title = c("SGNex_K562_directcDNA_replicate1_run2_genome_chr22_1_25409234",
            "SGNex_K562_directcDNA_replicate4_run2_genome_chr22_1_25409234", 
            "SGNex_K562_directRNA_replicate6_run1_genome_chr22_1_25409234",
            "SGNex_MCF7_directcDNA_replicate1_run2_genome_chr22_1_25409234", 
            "SGNex_MCF7_directcDNA_replicate3_run3_genome_chr22_1_25409234",
            "SGNex_MCF7_directRNA_replicate4_run1_genome_chr22_1_25409234"),
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
  Maintainer = "Ying Chen <chen_ying@gis.a-star.edu.sg>",
  RDataClass = "vector" ,
  DispatchClass = "BamFile",
  RDataPath = c(paste("NanoporeRNASeq/inst/extdata/SGNex_K562_directcDNA_replicate1_run2_genome_chr22_1_25409234.bam",
                      "NanoporeRNASeq/inst/extdata/SGNex_K562_directcDNA_replicate1_run2_genome_chr22_1_25409234.bam.bai",sep=":"),
                paste("NanoporeRNASeq/inst/extdata/SGNex_K562_directcDNA_replicate4_run2_genome_chr22_1_25409234.bam",
                       "NanoporeRNASeq/inst/extdata/SGNex_K562_directcDNA_replicate4_run2_genome_chr22_1_25409234.bam.bai",sep=":"), 
                paste("NanoporeRNASeq/inst/extdata/SGNex_K562_directRNA_replicate6_run1_genome_chr22_1_25409234.bam",
                       "NanoporeRNASeq/inst/extdata/SGNex_K562_directRNA_replicate6_run1_genome_chr22_1_25409234.bam.bai",sep=":"),
                paste("NanoporeRNASeq/inst/extdata/SGNex_MCF7_directcDNA_replicate1_run2_genome_chr22_1_25409234.bam",
                       "NanoporeRNASeq/inst/extdata/SGNex_MCF7_directcDNA_replicate1_run2_genome_chr22_1_25409234.bam.bai",sep=":"), 
                paste("NanoporeRNASeq/inst/extdata/SGNex_MCF7_directcDNA_replicate3_run3_genome_chr22_1_25409234.bam",
                       "NanoporeRNASeq/inst/extdata/SGNex_MCF7_directcDNA_replicate3_run3_genome_chr22_1_25409234.bam.bai",sep=":"),
                paste("NanoporeRNASeq/inst/extdata/SGNex_MCF7_directRNA_replicate4_run1_genome_chr22_1_25409234.bam",
                       "NanoporeRNASeq/inst/extdata/SGNex_MCF7_directRNA_replicate4_run1_genome_chr22_1_25409234.bam.bai",sep=":")),
  Tags = "",
  Notes = ""
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
