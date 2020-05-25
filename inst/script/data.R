# library(NanoporeRNASeq)
# sample.file <- system.file("extdata","sample_information.rds", package = "NanoporeRNASeq")
# sample_info <- readRDS(sample.file)
# save(sample_info, file = "sample_info.RData")


bamFileNames = dir("./inst/extdata/", pattern = '.bam$')
save(bamFileNames, file = "./data/bamFileNames.RData")


# gtf.file <- "Homo_sapiens.GRCh38.91.gtf"
# new_gtf.file <- paste0(wkdir, "/Homo_sapiens.GRCh38.91_chr",22,".gtf")
# system(paste0("grep ^22  ",gtf.file," > ",new_gtf.file))
# annotation.file <- "Homo_sapiens.GRCh38.91_chr22.gtf"
# devtools::install_github("GoekeLab/bambu",force = TRUE)
# annotationGrangesList <- prepareAnnotationsFromGTF(annotation.file)
# gr <-GRanges(seqnames = "22",
#              ranges = IRanges(1, 25409234),
#              strand = "+")
# hits <- findOverlaps(annotationGrangesList, gr, ignore.strand = TRUE)
# annotationGrangesList_tmp <- annotationGrangesList[queryHits(hits)]
# annotationGrangesList_chr22_1_25409234 <- annotationGrangesList_tmp
# save(annotationGrangesList_chr22_1_25409234, file = "annotationGrangesList_chr22_1_25409234.RData")
