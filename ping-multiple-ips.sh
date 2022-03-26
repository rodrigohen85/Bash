#!/bin/bash
#Autor: Rodrigo Henrique
#Descrição: Script para verificar host ativos e inativos na rede

#COLOQUE O CAMINHO E NOME DO ARQUIVO COM OS IPS
#LEMBRANDO, UM IP POR LINHA
IPLIST="ip.txt"

echo "Executando ping na rede"
echo "======================="
echo " "
for ip in $(cat $IPLIST)

do
   ping -c1 $ip &> /dev/null
   if [ $? -eq 0 ]
   then
   echo $ip Conexao-OK
   else
   echo $ip Falha-Conexao
   fi
done
