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
      plex_claim: Plex claim code (https://account.plex.tv/claim)
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

On first run, use `ansible-playbook -K --ask-vault-pass playbook.yml` to run the playbook. After passwordless-sudo is configured on the first run, you can omit the `-K`. Use the `--limit "<hostname>"` option to run the playbook on specific hosts, e.g. `ansible-playbook --ask-vault-pass --limit "JacksonBox,RaspberryPi" playbook.yml`.

## Notes

- When first configuring Plex, do the following:
  1.  Run `ssh -L 32400:localhost:32400 <web server SSH alias>` to open a tunnel from the server to your machine
  2.  Go to http://localhost:32400/web in a browser and sign in to Plex, and complete the given steps.
  3.  Go to Settings -> <media server name> -> Settings -> Remote Access and click "Enable Remote Access"
- When first configuring qBitorrent, find the default credentials by running `docker logs qbittorrent` on the web server.
- The default credentials for a new Calibre Web installation are username `admin` and password `admin123`.
