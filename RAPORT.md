# NGS_Analysis_project

University project, neccesary to complete the course. It is based on data from NCBI SRA database. It has been created in 2010-10-12.

# 1. SRP003355 project
Project was created by University of Michigan and was about Saccharomyces cerevisiae, which is a baker's yeast, brewer's yeast, budding yeast.

## 1.1 Aim of the project
For this porpouse, the project with ID SRP003355, was reviewed. 
The aim of mentioned project was a collective linkage analysis to discover functional mutations in Saccharomyces cerevisiae by whole genome sequencing.

## 1.2 Project data:
This SRA project consists of 3 repositories:

- SRX025959: Yeast vac22, wild-type segregant pool

- SRX025958: Yeast vac6, mutant segregant pool

- SRX025957: yeast vac6, wild-type segregant pool

Each repository creating by sequencing on Illumina Genome Analyzer with WholeGenomeSequencing Strategy.
Read are the type of pair-end ones, random selected. 

# 2. Steps of analysis:

1. Downloading data from SRA repositorium - fastq-dump
2. Downloading reference genome - wget
3. Quality control - fastqc + multiqc
4. Indexing reference genome - hisat2
5. Mapping to reference genome - hisat2
6. Conversion and indexing sam files - samtools
7. Aligment information - samtools + jupyter notebook
8. Variant calling - bcftools
9. Variant filter - vcftools
10. Variant adnotaion - snpEff
11. Visualization - R and Python.

## 2.1 Downloading data - SRA repositorium:

From each SRA project repostory, only first 1 000 000 read were downloaded.
Data has been obtained by using _fastq-dump_ function.
This step resulted in 3 directories with 2 .fastq files each.

## 2.2 Downloading data - reference genome:

Reference genome has been downloaded from Ensembl with the use of _wget_ function.

## 2.3 Quality control:

Next step was based on quality control for each downloaded record.
This has been perfomered with the use of _fastqc_ and _multiqc_ function.
All samples had good per base sequence quality, over 20. 
Generated files can be found in the Data/Quality_control directory.

## 2.4 Indexing reference genom:

Reference genome has been indexed with the use of _hisat2-bulid_ function.

## 2.5 Mapping:

Data from SRA repositories have been mapped to reference genome with the use of _hisat2_ function with paired read option.

## 2.6 Conversiona and indexing:

Sam files has been convered into bam files with _samtools view_, and then sorted with the use of _samtools index_.

## 2.7 Aligment information:

Information has been gathered with the use of the following _samtools_ arguments: _flagstat_, _stats_, _coverage_
Then, collected informations have been visualized with use of following _python_ packages: _pandas_ _seaborn_, _matplotlib.pyplot_.

## 2.8 SNP detection:

Genotype likelihoods have been created by the _bfctools mpileup_ function. 
Then _bfctools call_ has been used in order to call genetic variants and outputs the all identified variants.

## 2.9 Variant Filtering:

Vcftool has been used to reduce the size of the .vcf file and shorthen the number of variant.

## 2.10 Variant adnotation:

For adnotation the snpEff file has been used in pair with the R64-1-1 Assembly and 105 Ensembl release. version of the reference genome.

## 3. Results visualisation:

R package has been used in order to create Venn diagram and information from annotated files, such as **QUAL**, **MQ** and **DP**.


  
