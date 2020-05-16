# CentOS Bootstrap

The main goal of this role it to set up a secure and usable environment using
centos 7. This follows some of the best practices which are defined
[here](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7)
and
[here](https://www.digitalocean.com/community/tutorials/additional-recommended-steps-for-new-centos-7-servers)

# How to use it

Below you can an example playbook tha uses this playbook

```yml
---
  - hosts: all
    become: true
    roles:
      - role: ansible-centos-bootstrap

    vars:
        users:
            - username: "steve"
            # Encrypted password, please check http://docs.ansible.com/ansible/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module
            password: "password"
            ssh_public_key: "Key"
            make_sudo: true

        ssh_port: 2222

        firewalld_service:
            - http
            - https
```

# Issues

If you find any issues, just open an issue on Github and we will figure it out!