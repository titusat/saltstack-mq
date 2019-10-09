restore_rh_server_config:
  local.state.single:
    - tgt: 'E@minion* and G@os_family:RedHat'
    - tgt_type: compound
    - args:
      - fun: file.managed
      - name: /etc/httpd/conf/httpd.conf
      - source: salt://apache/files/httpd.conf
