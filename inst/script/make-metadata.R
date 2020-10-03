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
            "MCF7_directRNA_replicate4",
            "Hs_GRCh38_chr22_1_25409234_fasta"),
  Description = c("Nanopore direct cDNA sequencing genomic alignments from K562 replicate 1 in region chromosome 22 1 to 25409234", 
                  "Nanopore direct cDNA sequencing genomic alignments from K562 replicate 4 in region chromosome 22 1 to 25409234",
                  "Nanopore direct RNA sequencing genomic alignments from K562 replicate 6 in region chromosome 22 1 to 25409234",
                  "Nanopore direct cDNA sequencing genomic alignments from MCF7 replicate 1 in region chromosome 22 1 to 25409234",
                  "Nanopore direct cDNA sequencing genomic alignments from MCF7 replicate 3 in region chromosome 22 1 to 25409234",
                  "Nanopore direct RNA sequencing genomic alignments from MCF7 replicate 4 in region chromosome 22 1 to 25409234",
                  "Sequences of region chr22 1 to 25409234 in human GRCh38 DNA sm primary assembly"),
  BiocVersion = "3.12",
  Genome = "GRCh38", 
  SourceType = c(rep("BAM",6),"FASTA"), 
  SourceUrl = "https://github.com/GoekeLab/sg-nex-data",
  SourceVersion = "30 Sep 2020",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  Coordinate_1_based = TRUE,
  DataProvider = "SGNex",
  Maintainer = "The Singapore Nanopore Expression Project (SG-NEx)  <gokej@gis.a-star.edu.sg>",
  RDataClass = "vector" ,
  DispatchClass = c(rep("BamFile",6),"FaFile"),
  RDataPath = c(paste("NanoporeRNASeq/version0.99.1/K562_directcDNA_replicate1.bam",
                      "NanoporeRNASeq/version0.99.1/K562_directcDNA_replicate1.bam.bai",sep=":"),
                paste("NanoporeRNASeq/version0.99.1/K562_directcDNA_replicate4.bam",
                       "NanoporeRNASeq/version0.99.1/K562_directcDNA_replicate4.bam.bai",sep=":"), 
                paste("NanoporeRNASeq/version0.99.1/K562_directRNA_replicate6.bam",
                       "NanoporeRNASeq/version0.99.1/K562_directRNA_replicate6.bam.bai",sep=":"),
                paste("NanoporeRNASeq/version0.99.1/MCF7_directcDNA_replicate1.bam",
                       "NanoporeRNASeq/version0.99.1/MCF7_directcDNA_replicate1.bam.bai",sep=":"), 
                paste("NanoporeRNASeq/version0.99.1/MCF7_directcDNA_replicate3.bam",
                       "NanoporeRNASeq/version0.99.1/MCF7_directcDNA_replicate3.bam.bai",sep=":"),
                paste("NanoporeRNASeq/version0.99.1/MCF7_directRNA_replicate4.bam",
                       "NanoporeRNASeq/version0.99.1/MCF7_directRNA_replicate4.bam.bai",sep=":"),
                paste("NanoporeRNASeq/version0.99.1/Homo_sapiens.GRCh38.dna_sm.primary_assembly_chr22_1_25409234.fa",
                      "NanoporeRNASeq/version0.99.1/Homo_sapiens.GRCh38.dna_sm.primary_assembly_chr22_1_25409234.fa.fai",sep=":")),
  Tags = "",
  Notes = ""
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
