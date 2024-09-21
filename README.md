## Installation

1. Clone the repository and navigate to the directory
2. Inspect `vars.yml` to ensure it matches your current setup
3. Run `./install.sh` to install Ansible
4. Run `ansible-vault decrypt group_vars/all/secret.yml`, then edit `secret.yml` and add:

```
password: YOUR-NON-ROOT-USERS-PASSWORD-HERE
github_token: GITHUB_PERSONAL_ACCESS_TOKEN_FOR_ADDING_SSH_KEY_HERE
```

Save and close the file and then run `ansible-vault encrypt group_vars/all/secret.yml` to encrypt the file.

## Running

Run `./run.sh` to run the Ansible playbooks.
