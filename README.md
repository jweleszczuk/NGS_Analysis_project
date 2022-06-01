# NGS Analysis project 
University project, neccesary to complete the course.

- **RAPORT.md**        = this file holds information about overall goal and performed steps chronological in order.
- **README.ms**        = this file informs about structure of the repository.
- **Data directory**   = this directory contains results files, such as VCF, visualizations and logs.
- **Src directory**    = this directory holds all of the scripts, that were used in this project.

## **Data directory** - all result files
This directory contains data that was used \ obtained during the analysis. 

- Quality_control  = _fastqc_ reports + main _multiqc_ report.
- Reference_genome = all chromosomes + annotation data.
- VCF              = final annotated files, summaries and gene lists.
- Visualizations   = visualizations of VCF files, statistics of bam files and common SNPs between samples in presented in the form of Venn diagram. 
- mapping          = bam files and informations about them, such as coverage, flasgstat and stats for each repository.


## **Src directory** - all used scripts:
- Convert_and_index_bam.sh                 = convert .sam to .bam and index them.
- Download_SRR_files.sh                    = download of SRA repositories.
- Download_reference_genome.sh             = download reference genome.
- Mapping.sh                               = alignment of the samples to reference genome.
- Mapping_info.sh                          = statisctics for .bam files.
- Quality_control.sh                       = quality control.
- Variant_annotation.sh                    = annotation of variants.
- Variant_calling.sh                       = variant detection.
- Variant_filter.sh                        = selection by custom filter.
- Venn Diagram.ipynb                       = R Venn diagram (SNP).
- Visualization of mapping .ipynb          = R chromosomal visualization.
- Visualizations of the VCF files.ipynb    = general statisctics for the annotated .vcf files.

## Versions of used tools:

#### **R:**
- R 4.0.5
- readr_2.0.2         
- VennDiagram_1.7.3   
- vfutile.logger_1.4.3
- dplyr_1.0.7 
- vcfR_1.12.0   
- purrr_0.3.4   
- gridExtra_2.3 
- ggplot2_3.3.5 ape_5.5   

#### **Python:**
- Python 3.7.10 
- pandas 1.2.3
- seaborn 0.11.2
- matplotlib 3.3.4

#### **Bash:**
- samtools 1.15.1
- bcftools 1.7
- vcftools 0.1.15
- hisat2 2.1.0
- multiqc 1.12
- fatqc 0.11.5
- fastq-dump 2.8.2
- wget 1.21.3
- snpeff 5.1d
