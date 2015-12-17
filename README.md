trinitronx.tmux
=========
[![Gratipay](http://img.shields.io/gratipay/trinitronx.svg)](https://www.gratipay.com/trinitronx)
[![Ansible Galaxy](https://img.shields.io/ansible/role/1672.svg)](https://galaxy.ansible.com/detail#/role/1672)

Installs and configures [tmux][1] on a host.

Requirements
------------

 - Linux
   - none
 - OSX
   - [Homebrew][2] must be installed.

Role Variables
--------------

The default role variables in `defaults/main.yml` are:

    ---
    # defaults file for tmux
    tmux_install_latest: true
    # tmux_version:  ## This is not defined by default

If you want to install a specific version, set `tmux_install_latest: false` and `tmux_version` to the version you want.

Dependencies
------------

none

Example Playbook
----------------

To run this playbook with default settings, create a basic playbook like this:

    - hosts: servers
      roles:
         - tmux

To install a specific version:

    - hosts: servers
      roles:
         - { role: trinitronx.tmux, tmux_install_latest: false, tmux_version: 1.8-4 }


License
-------

[MIT][3]

Author Information
------------------


(c) 2014 [Hiroaki Nakamura][4] @hnakamur - tasks/homebrew_package.yml, templates/tmux.conf.j2 originally based on hnakamur/ansible-role-osx-tmux

(c) 2014 James Cuzella @trinitronx

[1]: http://tmux.sourceforge.net/
[2]: http://brew.sh/
[3]: http://choosealicense.com/licenses/mit/
[4]: http://hnakamur.github.io/
