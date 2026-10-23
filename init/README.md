This playbook is supposed to be run right after archinstall finishes. It uses
.local hostname resolution.

Assumptions about the archinstall run:

* openssh was installed,
* a regular user with sudo rights was created.

Manual steps to do on the target host before running this playbook:

* set up Avahi & nss-mdns as described [here] (for .local name resolution),
* install Python (for executing Ansible modules),
* ssh-copy-id (doesn't matter what key, it'll get overwritten from linux-home
anyway).

[here]: https://wiki.archlinux.org/title/Avahi#Hostname_resolution
