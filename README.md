## Installation

1. Clone the repository and navigate to the directory
2. Inspect `hosts.yml` and the `vars.yml` files to ensure they match your current setup
3. Run `./install.sh` to install Ansible and its requirements
4. Create `secret.yml` files under the `group_vars` and `host_vars` subdirectories:

   1. In `group_vars/all/secret.yml` add the following:

      ```
      github_token: GITHUB_PERSONAL_ACCESS_TOKEN_FOR_ADDING_SSH_KEY_HERE
      ```

   2. In `host_vars/JacksonBox/secret.yml` add the following:

      ```
      password: YOUR-USERS-PASSWORD-HERE
      dynamic_dns_password: DYNAMIC-DNS-SERVICE-PASSWORD-HERE
      nextcloud_db_password: NEXTCLOUD-DB-PASSWORD-HERE
      nextcloud_admin_password: NEXTCLOUD-ADMIN-PASSWORD-HERE
      ```

   3. In `host_vars/EvanAsus/secret.yml` add the following:

      ```
      password: YOUR-USERS-PASSWORD-HERE
      ```

   4. In `host_vars/RaspberryPi/secret.yml` add the following:

      ```
      password: YOUR-USERS-PASSWORD-HERE
      ```

5. Get a Wireguard configuration file from your VPN provider and place it at `roles/web/files/wg0.conf`.

6. Run `ansible-vault encrypt **/secret.yml roles/web/files/wg0.conf` and provide a password to encrypt the files. Note that all `secret.yml` files are ignored by `.gitignore`.

## Running

Run `./run.sh` to run all the playbooks. Optionally, pass the name of a playbook (without its extension) to just run that playbook (e.g. `./run.sh personal`).
