# Configuração de Roteador Cisco 1841

## Startup

Quando o roteador está subindo, ele checará se a IOS está intacta e se há configurações válidas a serem carregadas.
Se não houver configurações a serem carregadas e nem configurações válidas, ele cairá no seguinte setup.

```
Cisco 1841 (revision 5.0) with 114688K/16384K bytes of memory.
Processor board ID FTX0947Z18E
M860 processor: part number 0, mask 49
2 FastEthernet/IEEE 802.3 interface(s)
191K bytes of NVRAM.
63488K bytes of ATA CompactFlash (Read/Write)
Cisco IOS Software, 1841 Software (C1841-ADVIPSERVICESK9-M), Version 12.4(15)T1, RELEASE SOFTWARE (fc2)
Technical Support: http://www.cisco.com/techsupport
Copyright (c) 1986-2007 by Cisco Systems, Inc.
Compiled Wed 18-Jul-07 04:52 by pt_team


         --- System Configuration Dialog ---

Would you like to enter the initial configuration dialog? [yes/no]:
```

## Comandos

Os comandos estão disponíveis no modo privilegiado e não privilegiado, além disso, a IOS consegue realizar o autocomplete através do tab e ver os comandos que iniciam com certa parte através do `<começo-do-comando>?`.

- `enable` - Entra no modo de instruções privilegiadas
- `disable` - Sai do modo de instruções privilegiadas
- `clock` - configura o relógio do roteador
- `show <configuração>` - mostra certa configuração
  - `show history` - mostra o histórico de comando
  - `show clock` - mostra a configuração de relógio
- `wr` - salva as configurações de `running-config` em `startup-config`

## Configurando Gateway

```
# Precisa estar no modo privilegiado
$ configure terminal
$ hostname <nome-do-host>
$ interface fastethernet <bus>/<interface> # 0/0, 0/1
$ ip address <ip-do-gateway> <mascara>
$ no shutdown
$ exit
$ exit
$ copy running-config startup-config

```
