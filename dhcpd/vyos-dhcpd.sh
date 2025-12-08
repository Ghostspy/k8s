# VyOS DHCP config. However, VyOS does not support necessary logic for PXE booting from iVentoy or UDA

set service dhcp-server shared-network-name VLAN1 authoritative
set service dhcp-server shared-network-name VLAN20 authoritative
set service dhcp-server shared-network-name VLAN30 authoritative
set service dhcp-server shared-network-name VLAN50 authoritative
set service dhcp-server shared-network-name VLAN60 authoritative

# VLAN1
set service dhcp-server global-parameters 'option ubnt.unifi-address code 1 = ip-address;'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 subnet-parameters 'option ubnt.unifi-address 192.168.1.32;'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 default-router '192.168.1.254'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 domain-name 'ghosthacker.com'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 domain-search 'nis.ghosthacker.com'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 dns-server '192.168.1.19'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 dns-server '1.1.1.1'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 dns-server '8.8.8.8'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 lease '3600'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 lease-max '14400'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 range RANGE1 start '192.168.1.160'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 range RANGE1 stop '192.168.1.220'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 range RANGE2 start '192.168.1.80'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 range RANGE2 stop '192.168.1.92'
# Static mapping
# NodeMCU devices
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nodemcu-lspi-1 ip-address '192.168.1.10'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nodemcu-lspi-1 mac-address '8c:aa:b5:63:25:d9'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nodemcu-lspi-2 ip-address '192.168.1.11'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nodemcu-lspi-2 mac-address '84:cc:a8:b3:0c:6c'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nodemcu-lspi-3 ip-address '192.168.1.12'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nodemcu-lspi-3 mac-address 'a0:b7:65:4a:26:40'

# UniFi controller
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-ctrl ip-address '192.168.1.32'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-ctrl mac-address '00:50:56:b2:9d:f8'

# SDF-1
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping sdf-1 ip-address '192.168.1.34'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping sdf-1 mac-address 'f4:6d:04:9a:1b:d2'

# Logging/monitoring servers
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping logstash ip-address '192.168.1.41'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping logstash mac-address '00:50:56:b2:ce:b6'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping elasticsearch ip-address '192.168.1.42'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping elasticsearch mac-address '00:50:56:b2:35:dd'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping gitlab-ce ip-address '192.168.1.47'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping gitlab-ce mac-address '00:50:56:9f:11:0d'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping syslog ip-address '192.168.1.21'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping syslog mac-address '00:50:56:b5:12:5a'

# UniFi APs
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-6-ap-1 ip-address '192.168.1.240'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-6-ap-1 mac-address 'ac:8b:a9:5d:ed:35'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-6-ap-2 ip-address '192.168.1.241'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-6-ap-2 mac-address 'f4:e2:c6:af:8b:a0'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-ap-ac-2 ip-address '192.168.1.242'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping unifi-ap-ac-2 mac-address '44:d9:e7:f9:1a:f1'

# UniFi cameras
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-1 ip-address '192.168.1.235'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-1 mac-address 'b4:fb:e4:9e:c8:0e'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-2 ip-address '192.168.1.236'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-2 mac-address 'b4:fb:e4:9e:c8:12'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-3 ip-address '192.168.1.237'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-3 mac-address '18:e8:29:cf:36:d5'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-4 ip-address '192.168.1.238'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping uvc-g3-flex-4 mac-address 'b4:fb:e4:9e:c7:b2'

# VPN
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping openvpnas2 ip-address '192.168.1.24'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping openvpnas2 mac-address '00:50:56:b2:57:72'

#  NUT
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nuts ip-address '192.168.1.82'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping nuts mac-address 'b8:27:eb:24:7f:c2'

# Laptops
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping springer-wired ip-address '192.168.1.87'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping springer-wired mac-address 'c4:54:44:c0:59:21'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping springer-wireless ip-address '192.168.1.88'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping springer-wireless mac-address 'ec:0e:c4:0e:4a:17'

# Kubernetes nodes
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-nfs-wlan ip-address '192.168.1.206'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-nfs-wlan mac-address 'e4:5f:01:1a:9f:bb'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-nfs ip-address '192.168.1.106'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-nfs mac-address 'e4:5f:01:1a:9f:b9'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-master-wlan ip-address '192.168.1.207'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-master-wlan mac-address 'dc:a6:32:66:7b:af'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-01-wlan ip-address '192.168.1.208'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-01-wlan mac-address 'dc:a6:32:cd:25:1f'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-02-wlan ip-address '192.168.1.209'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-02-wlan mac-address 'dc:a6:32:ee:e6:f7'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-03-wlan ip-address '192.168.1.210'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-03-wlan mac-address 'b8:27:eb:40:5b:f4'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-04-wlan ip-address '192.168.1.211'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping k8s-worker-04-wlan mac-address 'b8:27:eb:88:79:25'

# Misc servers
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping PiNAS ip-address '192.168.1.162'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping PiNAS mac-address 'dc:a6:32:08:46:57'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping MACBOOK-AIR ip-address '192.168.1.175'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping MACBOOK-AIR mac-address '38:c9:86:36:77:a9'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping openmediavault ip-address '192.168.1.157'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping openmediavault mac-address 'b4:2e:99:d0:ca:b9'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping builder ip-address '192.168.1.144'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping builder mac-address '54:04:a6:d9:f2:3e'

set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping octopi ip-address '192.168.1.191'
set service dhcp-server shared-network-name VLAN1 subnet 192.168.1.0/24 static-mapping octopi mac-address 'dc:a6:32:02:79:e0'

# VLAN20
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 default-router '192.168.20.254'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 domain-name 'ghosthacker.com'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 dns-server '192.168.1.19'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 dns-server '1.1.1.1'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 dns-server '8.8.8.8'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 lease '3600'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 lease-max '14400'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 range RANGE1 start '192.168.20.129'
set service dhcp-server shared-network-name VLAN20 subnet 192.168.20.0/24 range RANGE1 stop '192.168.20.199'

# VLAN30
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 default-router '192.168.30.254'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 dns-server '192.168.1.19'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 dns-server '1.1.1.1'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 dns-server '8.8.8.8'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 lease '3600'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 range RANGE1 start '192.168.30.100'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 range RANGE1 stop '192.168.30.250'
# Static mapping
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 static-mapping freepbx ip-address '192.168.30.10'
set service dhcp-server shared-network-name VLAN30 subnet 192.168.30.0/24 static-mapping freepbx mac-address '00:50:56:9f:31:be'

# VLAN50
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 default-router '192.168.50.254'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 domain-name 'ghosthacker.com'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 dns-server '192.168.1.19'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 dns-server '1.1.1.1'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 dns-server '8.8.8.8'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 lease '3600'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 lease-max '14400'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 range RANGE1 start '192.168.50.100'
set service dhcp-server shared-network-name VLAN50 subnet 192.168.50.0/24 range RANGE1 stop '192.168.50.250'

# VLAN60
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 default-router '192.168.63.254'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 domain-name 'k8s.ghosthacker.com'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 dns-server '192.168.1.19'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 dns-server '1.1.1.1'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 dns-server '8.8.8.8'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 lease '3600'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 lease-max '14400'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 range RANGE1 start '192.168.63.200'
set service dhcp-server shared-network-name VLAN60 subnet 192.168.60.0/22 range RANGE1 stop '192.168.63.248'
