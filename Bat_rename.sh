#!/bin/bash

file_name=`ls -d */`



file_new_name=`echo ${file_name}|sed -e "s/ /temp_space/g"|sed -e "s/\/temp_space/ /g"`
echo ${file_new_name}
flag=0
for item in ${file_new_name}
do

	file_rename=`echo ${item}|sed -e "s/temp_space/ /"`


	cp_file=`ls "${file_rename}"/*.pdf`



	flag=`echo $(( flag + 1))`

  cp "${cp_file}" ./
  file_cp_name=`echo "${file_rename}"/*.pdf|sed -e "s/.*\///"`
	echo "${file_cp_name}"
	mv "${file_cp_name}" "${flag}__${file_cp_name}"



done
