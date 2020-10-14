alex@stream:~ $ sudo ip address add 192.168.0.100/24 broadcast + dev enp0s26f7u1u3
alex@stream:~ $ nmcli con mod enp0s26f7u1u3 ipv4.addresses 192.168.0.100/24 
