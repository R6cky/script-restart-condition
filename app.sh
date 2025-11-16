#!/bin/bash

# Limites
CPU_LIMITE=90      # em %
MEM_LIMITE=90      # em %

# Coletar uso de CPU (média de 1 minuto)
CPU_USO=$(top -bn1 | grep -i "Cpu(s)" | awk '{print 100 - $8}')
CPU_USO=${CPU_USO%.*}

# Coletar uso de memória
#MEM_USO=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')

#echo "CPU: $CPU_USO% | MEM: $MEM_USO%"

# Verifica limites
#if [ "$CPU_USO" -ge "$CPU_LIMITE" ]; then
#    echo "CPU acima de $CPU_LIMITE%, reiniciando..."
#    /usr/sbin/reboot
#fi

#if [ "$MEM_USO" -ge "$MEM_LIMITE" ]; then
#    echo "Memória acima de $MEM_LIMITE%, reiniciando..."
#    /usr/sbin/reboot
#fi
