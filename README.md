infra-metal
===========

Trying to make my setups fully automated on bare metal machines.

Prerequisites
-------------

* Arch Linux installed with archinstall.
    * Only basic things should be set up with it, so its fast to do & redo.
    * See [ansible/README.init.md](ansible/README.init.md) for more details, it
_does_ require some manual steps after installation.
    * TODO: save my archinstall configs here somewhere.
* `ssh-copy-id` your key to the target machines for `make init`.
* Ansible installed on the controller.

```
make init
```

^^^ This step should be run on the local network, so that the hosts are
discoverable via .local hostnames.

Usage
-----

This should run the main playbook, setting up everything:

    make config

After everything is set up, maintenance can be done via the GitHub workflow.

License
-------

Distributed under the MIT License.
See [LICENSE.txt] for details.

[LICENSE.txt]: LICENSE.txt
