# RRBS-Analysis-Pipeline
This repository contains a pipeline for analysing Reduced Representation Bisulfite Sequencing (RRBS) data. The workflow performs quality control, read trimming, alignment, methylation calling, and downstream analysis of DNA methylation data.  The pipeline is designed to be reproducible and can be adapted for different RRBS datasets.
## Workflow
1. `01_methylseq.sh`
   - Runs the nf-core/methylseq pipeline.
   - Input: FASTQ files listed in `samplesheet.csv`
   - Output: methylation calls and cytosine reports.
     
2. `03_differential_methylation.R`
   - Performs differential methylation analysis.
   - Input: annotated methylation data.
   - Output: significant differentially methylated CpGs/regions.

3. `02_annotation.R`
   - Annotates CpG sites or differentially methylated regions.
   - Input: methylseq output.
   - Output: annotated methylation tables.

4. `04_enrichment.R`
   - Performs GO/pathway enrichment analysis.
   - Input: genes associated with differentially methylated regions.
   - Output: enriched pathways and figures.
