# ROLE: Proxmox Container Creation
 Creates LXC Containers on Proxmox servers

## Features
- Creates container based off user settings
- Starts container and waits for SSH signal

## Arguments
*N/A*

## Example
```yaml
---
- name: Proxmox Container Creation
  hosts: shack-vm-001
  roles:
    # Docker Swarm Production Node
    - { role: proxmox-container-create,
        proxmox_container_vmid: 891,
        proxmox_container_name: "shack-app-p001",
        proxmox_container_description: "Docker Swarm Production Node #1",
        proxmox_container_tag: "production",
        proxmox_container_ip: "10.0.0.91" }

```

## TODO
- priv nfs opts
