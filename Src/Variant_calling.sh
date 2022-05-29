#!/bin/bash

samtools faidx "/home/jarek/Project_NGS/chromosomes/whole_genom.fa"

bcftools mpileup  -Ou --fasta-ref  "/home/jarek/Project_NGS/chromosomes/whole_genom.fa" "/home/jarek/Project_NGS/zmapowane/SRR_45/45_hisat_sorted.bam" "/home/jarek/Project_NGS/zmapowane/SRR_46/46_hisat_sorted.bam" "/home/jarek/Project_NGS/zmapowane/SRR_47/47_hisat_sorted.bam" > "/home/jarek/Project_NGS/zmapowane/my_raw.bcf" 


bcftools call "/home/jarek/Project_NGS/zmapowane/my_raw.bcf" -vmO z -o "/home/jarek/Project_NGS/zmapowane/Call_all.vcf.gz"


l_of_names_1=(45 46 47)

for number in ${l_of_names[*]};do
	
	bcftools mpileup  -Ou --fasta-ref  "/home/jarek/Project_NGS/chromosomes/whole_genom.fa" "/home/jarek/Project_NGS/zmapowane/SRR_"$number"/"$number"_hisat_sorted.bam"  > "/home/jarek/Project_NGS/zmapowane/"$number".bcf"
	
	bcftools call "/home/jarek/Project_NGS/zmapowane/"$number".bcf" -vmO z -o "/home/jarek/Project_NGS/zmapowane/"$number".vcf.gz"
done
