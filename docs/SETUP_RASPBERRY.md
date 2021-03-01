### Fix hostname

```
hostnamectl set-hostname <hostname>
```

Edit /etc/hosts and replace any occurances of raspberry with the new name

### Enable the root user 

To allow you to change the default username we must log in as another user.
```
> sudo passwd root
```
Pick an easy to remember password, we'll disable this user later.

#### Enable SSH to root
1. Add ```PermitRootLogin yes``` to /etc/ssh/sshd_config
1. Reboot

### Rename pi user

SSH back as the root user

```
> usermod -l patnym pi
```

### Fix home directory

```
> usermod -m -d /home/patnym patnym
```

### Upload SSH key

Download **Home key** from Lastpass and install

```
> ssh-copy-id -i ~/.ssh/id_rsa patnym@host
```

### Change password

Get the password **Home password** from Lastpass

```
> passwd
```

### Passwordless sudoer

Authenticate as sudo first, then add
```
> sudo bash
> echo "patnym  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
```

### Disable root user

```
> sudo passwd -l root
```

#### Disable SSH to root
1. Remove ```PermitdRootLogin yes``` from /etc/ssh/sshd_config
2. Reboot
