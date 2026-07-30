# Ansible Virtual Machines
*This toolset contains Ansible roles and playbooks for `Hyper-V` and `Proxmox` automations.*

## What
**Proxmox:**
- Creating LXC Containers


## How
**VSCode:**
- `CTRL` + `T`
- Choose playbook

**Terminal:**
- Alter variables at `vars/`
- Then run the playbook with your variable file
```bash
ansible-playbook -i inventory playbook-proxmox-container-create.yml -e @vars/proxmox-container.yml
```


## Todo
- Stopping LXC Containers
- Starting LXC Containers
- Removing LXC Containers
