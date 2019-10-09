restore_deb_server_config:
  local.state.single:
    - tgt: 'E@minion* and G@os_family:Debian'
    - tgt_type: compound
    - args:
      - fun: file.managed
      - name: /etc/apache2/apache2.conf
      - source: salt://apache/files/apache2.conf
