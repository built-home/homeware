{% for peer in ipsec_peers %}
{{ ansible_default_ipv4.address }} {{ peer.other }} : PSK "{{ peer.psk }}"
{% endfor %}