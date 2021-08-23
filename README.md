andrewrothstein.certstrap
=========
![Build Status](https://github.com/andrewrothstein/ansible-certstrap/actions/workflows/build.yml/badge.svg)

Installs [certstrap](https://github.com/square/certstrap).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.certstrap
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
