#!/bin/bash



l_of_names=(45 46 47)

begin_name="SRR0645"

end_name=".fastq.gz"

folder_name="Project_NGS/SRR_"

for number in ${l_of_names[*]};do
	fastq-dump  SRR0645$number -X 1000000  --split-files $folder_name$number

done

