# Install SSH Keys

This is a little helper to make it easy to install your public SSH keys from GitHub onto a remote server.


All you need to do is to add the following function to your `~/.bashrc`/`~/.zshrc`:
```bash
function install-ssh-key(){
    docker run -ti vpetersson/copy-ssh-keys \
        ansible-playbook -i $1, --ask-pass -u $2 /root/playbook.yml
}
```

Then invoke it by running `install-ssh-keys host user`.

Note that this is hard coded to my keys, but you can modify it to yor own needs.
