# NGS Analysis project


University project, neccesary to complete the course.
It is based on data from NCBI SRA database, which has been created in 2010-10-12.


## 1. SRP003355 project

Project was created by University of Michigan and it is about Saccharomyces cerevisiae, which is a baker's yeast.

### 1.1 Aim of the project

The aim of mentioned project was a collective linkage analysis to discover functional mutations in Saccharomyces cerevisiae by Whole Genome Sequencing.

### 1.2 Project data:

This SRA project consists of 3 repositories:

- SRX025959: Yeast vac22, wild-type segregant pool [47]

- SRX025958: Yeast vac6, mutant segregant pool [46]

- SRX025957: yeast vac6, wild-type segregant pool [45]

Each repository was created by sequencing on Illumina Genome Analyzer with Whole Genome Sequencing Strategy.
Read are the type of pair-end ones, random selected. 

## 2. Steps of analysis:

1. Downloading data from SRA repositorium - _fastq-dump_
2. Downloading reference genome - _wget_
3. Quality control - _fastqc_ +_ multiqc_
4. Indexing reference genome - _hisat2_
5. Mapping to reference genome - _hisat2_
6. Conversion and indexing sam files - _samtools_
7. Aligment information - _samtools_ + _jupyter notebook_
8. Variant calling - _bcftools_
9. Variant filter - _vcftools_
10. Variant annotaion - _snpEff_
11. Visualization - _R_ and _Python_.

### 2.1 Downloading data - SRA repositorium:

From each SRA project repostory, only first 1 000 000 reads were downloaded.
Data has been obtained by using _fastq-dump_ function.
This step resulted in 3 directories with 2 .fastq files each.

### 2.2 Downloading data - reference genome:

Reference genome has been downloaded from Ensembl with the use of _wget_ function.

### 2.3 Quality control:

Next step was based on quality control for each downloaded record.
This has been perfomered with the use of _fastqc_ and _multiqc_ function.
All samples had good per base sequence quality, with score over 20. 

### 2.4 Indexing reference genom:

Reference genome has been indexed with the use of _hisat2-bulid_ function.

### 2.5 Mapping:

Data from SRA repositories have been mapped to reference genome with the use of _hisat2_ function with paired read option.

### 2.6 Conversiona and indexing:

.Sam files has been convered into .bam files with _samtools view_, and then sorted with the use of _samtools index_.

### 2.7 Aligment information:

Informations about created bam files, had been gathered with the use of the following _samtools_ arguments: _flagstat_, _stats_ and _coverage_ function.
Then, mentioned data has been visualized with use of following _Python_ packages: _pandas_ _seaborn_, _matplotlib.pyplot_.

### 2.8 SNP detection:

Genotype likelihoods have been created by the _bfctools mpileup_ function. 
Then _bfctools call_ has been used in order to call genetic variants and outputs the all identified variants.

### 2.9 Variant Filtering:

_Vcftool_ has been used to reduce the size of the .vcf file and shorten the number of variant.

### 2.10 Variant annotation:

For annotation the _snpEff_ program has been used in pair with the R64-1-1 Assembly and 105 Ensembl release. version of the reference genome.

### 3. Results visualisation:

_R_ package has been used in order to create Venn diagram and information from annotated files, such as **QUAL**, **MQ** and **DP**.

