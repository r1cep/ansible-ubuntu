# Ansible playbook for Windows Subsystem for Linux 2.

## Table of Contents

- [Support version](#support-version)
- [Getting started](#getting-started)
    - [Install ansible](#install-ansible)
    - [Run ansible-playbook](#run-ansible-playbook)

## Support version

- Ubuntu-18.04 LTS (Bionic Beaver)
- Ubuntu-20.04 LTS (Focal Fossa)


## Getting started

### Install ansible

First of all, you need to install ansible before running ansible-playbook.

```bash
$ ./scripts/install-ansible.sh
```

#### Note

If you use Ubuntu 18.04, install ansible with the following command.

```bash
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible python-apt
```

### Run ansible-playbook

Run ansible-playbook with --dry-run mode.

```bash
$ ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff --check
```

Run ainsble-playbook

```bash
$ ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff
```

#### Note

The first time you run ansible-playbook, you will need a sudo password.

After running ansible-playbook, the execution user is registered in sudoers.

```bash
$ ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff --ask-become-pass
```
