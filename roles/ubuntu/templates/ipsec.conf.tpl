config setup
    strictcrlpolicy=no
    uniqueids=no

conn %default
    mobike=yes
    dpdaction=clear
    dpddelay=35s
    dpdtimeout=200s
    fragmentation=yes

conn iOS-IKEV2
    auto=add
    keyexchange=ikev2
    eap_identity=%any
    left=%any
    leftsubnet=0.0.0.0/0
    rightsubnet=192.168.1.254
    leftauth=psk
    leftid=%any
    right=%any
    rightsourceip=192.168.1.254
    rightauth=eap-mschapv2
    rightdns=1.1.1.1,2606:4700:4700::1111
    rightid=%any