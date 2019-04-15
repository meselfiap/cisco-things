switch$ enable
switch$ configure terminal
switch (config)$ hostname sw1
sw1 (config)$ interface vlan1
sw1 (config-if)$ ip address 10.0.0.1 255.0.0.0 # Configura o IP
sw1 (config-if)$ no shutdown # Liga as portas
sw1 (config-if)$ exit
sw1 (config)$ ip default-gateway 10.0.0.254 # Seta o gateway padrão
sw1 (config)$ exit
sw1$ running-config # Mostra a configuracao
sw1$ startup-config # Mostra a configuracao de startup
sw1$ copy running-config startup-config # Salva a configuracao do running para o startup
