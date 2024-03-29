{% from "apache/map.jinja" import apache with context %}
include:
  - apache.restart

apache_config:
  file.managed:
    - name: {{ apache.config }}
    - source: {{ apache.config_source }}
    - require:
      - pkg: {{apache.pkg}}
