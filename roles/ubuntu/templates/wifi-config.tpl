network:
  version: 2
  ethernets:
    eth0:
      optional: true
      dhcp4: true
  wifis:
    wlan0:
      optional: true
      access-points:
        "${ACCESS_POINT}"
          password: "${ACCESS_POINT_PASSWORD}"
      dhcp4: true