#!/bin/bash

## The methylation data were processed using **nf-core/methylseq** with the following command:
## https://nf-co.re/methylseq/2.4.0/parameters
## INPUT
#1. -samplesheet.csv: Sample sheet containing the path to a comma-separated file containing sample information (fastq_1, sample,fastq_2)
#2. -Reference genome: rn6
#3. -outdir: Directory in which the results will be saved.
#4. -profile: HPC name, if run on HPC
#5. -project: Project name on HPC

###################################################
nextflow run nf-core/methylseq \
    --input Metadata/samplesheet.csv \
    --outdir results/methylseq \
    --genome rn6 \
    -profile uppmax \
    --project <NAISS_PROJECT_ID> \
    --rrbs \
    --non_directional \
    --clip_r1 3 \
    --three_prime_clip_r1 2 \
    --un \
    --ambiguous \
    --cytosine_report

####################################################
## OUTPUT: The pipeline generates:
#1. -Quality control reports (FastQC, MultiQC)
#2. -Adapter- and quality-trimmed reads
#3. -Bismark alignment files
#4. -Methylation calls
#5. -Cytosine reports ...
