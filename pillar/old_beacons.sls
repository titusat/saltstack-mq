beacons:
  inotify:
    - files:
        /etc/salt/test:
         mask:
           - modify
    - disable_during_state_run: True
