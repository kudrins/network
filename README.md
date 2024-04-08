## Домашнее задание Архитектура сетей

### Описание домашнего задания
```
Развернуть сетевую лабораторию по заданной схеме
- все сервера и роутеры ходят в инет черз inet-router
- все сервера видят друг друга
- VMs разворачиваются в среде VMware vSphere 7
- VMs разворачиваются из шаблона Ubuntu Server 22.04
  
Файлы:

- network_scheme.pdf:         заданная схема сети
- network.yml:                ansible playbook развертывания и настройки VMs
- vars.yml:                   переменные для создания VMs в VMware vSphere 7
- host:                       inventory

сценарий развeртывания VMs, include_tasks в network.yml
- central-router.yml:         VM central-router
- office1-router.yml:         VM office1-router
- office2-router.yml:         VM office2-router
- servers.yml:                VMs server
- inet-router.yml:            VM inet-router 
У роутеров разное количество интерфейсов, для каждого отдельный сценарий.
Адресное пространство VMs недоступно с хоста ansible (исключение inet-router),
использовались возможности модулей community.vmware.vmware...

- inet-99-netcfg-vmware.yaml: /etc/netplan/99-netcfg-vmware.yaml для inet-router
                              имена сетевых интерфейсов известны
- iptables_restore:           /etc/network/iptables.sh скрипт автозагрузки правил iptables
                              способ автозагрузки с размешением скрипта в каталоге
							  /etc/network/if-pre-up.d/ не отрабатывал
							  использовалась автозагрузка через crontab
- iptables_rules.ipv4:        правила iptables
- net1.sh:                    скрипт добавления маршрутов в файл конфигурации
                              интерфейсов central-router

 Результаты проверки в скриншотах:
- cental-server.jpg
- office1-server.jpg
- office2-server.jpg

 
