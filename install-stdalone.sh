#!/usr/bin/env bash

#### Building the directory to mount

echo "Remake selenzyme2 folder? yes:1, no:0"
read remake_selenzyme2
if [ $remake_selenzyme2 == 1 ]
then
	sudo rm -rf selenzyme2
	mkdir selenzyme2

	echo "\n     COPYING selenzyme2 code"
	cp -rp gitcode2023/* selenzyme2
	mkdir -p selenzyme2/selenzyPro

	echo "\n     COPYING selenzyme2 data"
	sudo rm -rf data_2023
	echo "unzipping data_2023.zip !!!"
	unzip compressed_data/data_2023.zip -d selenzyme2/selenzyPro/data/
	mv selenzyme2/selenzyPro/data/data_2023/* selenzyme2/selenzyPro/data/

	echo "unzipping seqs.zip"
	unzip compressed_data/seqs.zip -d selenzyme2/selenzyPro/data

	echo "\n     MAKING additional folders"
	mkdir -p selenzyme2/selenzyPro/log
	mkdir -p selenzyme2/selenzyPro/log2
	mkdir -p selenzyme2/selenzyPro/uploads 
else
	echo "Delete selenzyme2/uploads folder? yes:1, no:0"
	read delete_uploads

	if [ $delete_uploads == 1 ]
	then
		sudo rm -r selenzyme2/selenzyPro/uploads/*
	fi
fi
