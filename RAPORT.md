# NGS_Analysis_project

University project, neccesary to complete the course. It is based on data from NCBI SRA database. It has been created in 2010-10-12.

# 1. SRP003355 project
Project was created by University of Michigan and was about Saccharomyces cerevisiae.

## 1.1 Aim of the project
For this porpouse, the project with ID SRP003355, was reviewed. 
The aim of mentioned project was a collective linkage analysis to discover functional mutations in Saccharomyces cerevisiae by whole genome sequencing.

## 1.2 Project data
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
7. Variant calling - bcftools
8. Variant filter - vcftools
9. Variant adnotaion - snpEff

## 2.1 Downloading data - SRA repositorium

From each SRA project repostory, only first 1 000 000 read were downloaded.
Data has been obtained by using fastq-dump function.
This step resulted in 3 directories with 2 .fastq files each.

## 2.2 Downloading data - reference genome

Reference genome has been downloaded from Ensembl with the use of wget function.

## 2.3 Quality control

Next step was based on quality control for each downloaded record.
This has been perfomered with the use of fastqc and multiqc function.
All samples had good per base sequence quality, over 20. 
Generated files can be found in the Data/Quality_control directory.

## 2.4 Indexing reference genom
Reference genome has been indexed with the use of hisat2-bulid function.

## 2.5 Mapping

Data from SRA repositories have been mapped to reference genome with the use of hisat2 function with paired read option.
Sam files has been convered into bam files with _samtools view_,  and sorted with the use of samtools

## 6. SNP detection

## 7. Variant adnotation

## 8. Results visualisation




  
