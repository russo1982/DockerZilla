# DockerZilla
Tools for easy automation life
---

## Ansible Playbook to Check GRE Interface in RouterOS 7
This playbook will verify the existence and status of a GRE interface on a MikroTik RouterOS 7 device.

### Requirements
1. Ansible installed on your control machine
2. **community.routeros** collection installed:
```
ansible-galaxy collection install community.routeros
```
3. Proper inventory file with your RouterOS devices

### Usage
1. Save the playbook as **check_gre_interface.yml**
2. Run the playbook:
   ```
   ansible-playbook -i inventory.ini check_gre_interface.yml
   ```

