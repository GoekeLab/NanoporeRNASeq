### =========================================================================
### NanoporeRNAseq metadata 
### -------------------------------------------------------------------------
###
replicate_names <- c("K562_directcDNA_replicate1",
    "K562_directcDNA_replicate4",
    "K562_directRNA_replicate6",
    "MCF7_directcDNA_replicate1",
    "MCF7_directcDNA_replicate3",
    "MCF7_directRNA_replicate4")
bamFileNames <- paste0("NanoporeRNASeq/version1.3.4/",
        replicate_names,".bam")
meta <- data.frame(
    Title = c(replicate_names,
            "Hs_GRCh38_chr22_1_25409234_fasta"),
    Description =
        c(paste0("Nanopore ", rep(c(rep("directcDNA",2),"directRNA"),2),
        " sequencing genomic alignments from ", rep(c("K562","MCF7"),each = 3), 
        " replicate",c(1,4,6,1,3,4), " in region chromosome 22 1 to 25409234"),
        paste0("Sequences of region chr22 1 to 25409234 ",
        "in human GRCh38 DNA sm primary assembly")),
    BiocVersion = "3.14",
    Genome = "GRCh38", 
    SourceType = c(rep("BAM",6),"FASTA"), 
    SourceUrl = "https://github.com/GoekeLab/sg-nex-data",
    SourceVersion = "30 Sep 2020",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    Coordinate_1_based = TRUE,
    DataProvider = "SGNex",
    Maintainer = "The Singapore Nanopore Expression Project (SG-NEx) 
    <gokej@gis.a-star.edu.sg>",
    RDataClass = "vector" ,
    DispatchClass = c(rep("BamFile",6),"FaFile"),
    RDataPath = c(paste(bamFileNames,paste0(bamFileNames,".bai"), sep = ":"),
        paste(paste0("NanoporeRNASeq/version1.3.4/",
            "Homo_sapiens.GRCh38.dna_sm.primary_assembly_chr22_1_25409234.fa",
            c("",".fai")), collapse = ":")),
    Tags = "",
    Notes = ""
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names = FALSE)
