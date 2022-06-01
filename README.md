# NGS Analysis project 
University project, neccesary to complete the course.

- **RAPORT.md**      = this file holds information about overall goal and performed steps chronological in order.
- **README.ms**      = this file, which informs about structure of the repository.
- **Data directory** = contains resul files, such as VCF files, visualizations and logs.
- **Src directory**  = hold all of the scripts, used in this project.

## **Data directory** - all result files
This directory contains data that was used \ obtained during the analysis. 

- Quality_control  = _fastqc_ reports + main _multiqc_ report.
- Reference_genome = all chromosomes + annotation data.
- VCF              = final annotated files, summaries and genes.
- Visualizations   = visualizations of VCF files, statistics of bam files and common SNPs between samples in form of Venn diagram. 
- mapping          = bams and informations files such as coverage, flasgstat and stats for final bam of each repository.


## **Src directory** - all used scripts:
- Convert_and_index_bam.sh                 = convert .sam to .bam and index them.
- Download_SRR_files.sh                    = download of SRA repositories.
- Download_reference_genome.sh             = download reference genome.
- Mapping.sh                               = mapping samples to reference genome.
- Mapping_info.sh                          = statisctics for .bam files.
- Quality_control.sh                       = quality control.
- Variant_annotation.sh                    = annotation of variants.
- Variant_calling.sh                       = variant detection.
- Variant_filter.sh                        = selection by custom filter.
- Venn Diagram.ipynb                       = R Venn diagram (SNP).
- Visualization of mapping .ipynb          = R chromosomal visualization.
- Visualizations of the VCF files.ipynb    = general stats for the annotated vcf.

## Versions of used tools:
...

