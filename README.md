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

   3. In `group_vars/EvanAsus/secret.yml` add the following:

      ```
      password: YOUR-USERS-PASSWORD-HERE
      ```

      Finally, run `ansible-vault encrypt **/secret.yml` and provide a password to encrypt the files. Note that all `secret.yml` files are ignored by `.gitignore`.

   4. TODO RaspberryPi secrets

## Running

Run `./run.sh` to run the Ansible playbook.
