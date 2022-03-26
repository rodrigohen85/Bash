#!/bin/bash

#Autor: Rodrigo Henrique
#Versao: 1.0
#Descrição: Script bash para apagar arquivos antigos 

directory="COLOQUE O CAMINHO DO DIRETORIO AQUI"

echo "Listando arquivos antigos..."

find $directory -mtime +30 -exec ls -l {} \;
sleep 3
echo "Arquivos com mais de 30 dias encontrados no diretorio"
echo "======================================================"

cd $directory
sleep 3

echo "Aoagando arquivos..."
find $directory -mtime +30 -exec rm {} \;
sleep 3
echo "Arquivos com mais de 30 dias apagados"
echo "======================================================"
