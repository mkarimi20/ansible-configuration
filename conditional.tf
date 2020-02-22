---
- name: Conditional Playbook
  hosts: all
  become: true
  become_method: sudo
  connection: ssh
  ignore_errors: false
  tasks:
    - name: Install on centos 6 only
      when: (ansible_facts['distribution'] == "CentOS" and ansible_facts['distribution_major_version'] == "6")
      package:
        name: kernel
        state: latest

    - name: Install on centos 6 only
      when: (ansible_facts['distribution'] == "CentOS" and ansible_facts['distribution_major_version'] == "6")
      shell: "/sbin/shudown -r now"