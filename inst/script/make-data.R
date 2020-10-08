### =========================================================================
### NanoporeRNAseq -- creating data objects processes
### -------------------------------------------------------------------------
###

#create sample_info.RData
library(NanoporeRNASeq)
sample_info <-
    DataFrame(readRDS(system.file("extdata","sample_information.rds",
        package = "NanoporeRNASeq")))
replicate_names <- c("K562_directcDNA_replicate1",
    "K562_directcDNA_replicate4",
    "K562_directRNA_replicate6",
    "MCF7_directcDNA_replicate1",
    "MCF7_directcDNA_replicate3",
    "MCF7_directRNA_replicate4")
bamFileNames <- paste0("NanoporeRNASeq/version0.99.1/",
        replicate_names,".bam")
sample_info$fileNames <- bamFileNames
save(sample_info, file = "./data/sample_info.RData", version = 2)


#Download the Homo_sapiens.GRCh38.91.gtf from ensembl ftp
download.file(url = 
    "ftp://ftp.ensembl.org/pub/release-91/gtf/homo_sapiens/
    Homo_sapiens.GRCh38.91.gtf.gz",
    destfile = "Homo_sapiens.GRCh38.91.gtf.gz")

#create annotationGrangesList_chr22_1_25409234.RData
gtf.file <- "Homo_sapiens.GRCh38.91.gtf"
wkdir <- getwd()
new_gtf.file <- paste0(wkdir, "/Homo_sapiens.GRCh38.91_chr",22,".gtf")
system2(paste0("grep ^22  ",gtf.file," > ",new_gtf.file))
annotation.file <- "Homo_sapiens.GRCh38.91_chr22.gtf"


devtools::install_github("GoekeLab/bambu",force = TRUE)
library(bambu)
annotationGrangesList <- prepareAnnotations(annotation.file)
gr <- GRanges(seqnames = "22", ranges = IRanges(1, 25409234),
    strand = "+")
hits <- findOverlaps(annotationGrangesList, gr, ignore.strand = TRUE)
annotationGrangesList_tmp <- annotationGrangesList[queryHits(hits)]
annotation <- annotationGrangesList_tmp
save(annotation, file = "annotation.RData", version = 2)
