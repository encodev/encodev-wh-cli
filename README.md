# Encodev WH CLI

Interactive Debian server bootstrapper for Caddy, PHP-FPM, MariaDB, UFW,
Fail2ban, WP-CLI, Adminer, and isolated website hosting.

For Encodev internal use only. This repository is public for transparency and
reference.

Run it as root:

```bash
sudo wh
```

## Install

```bash
sudo curl -fsSL https://raw.githubusercontent.com/encodev/encodev-wh-cli/master/bin/wh -o /usr/local/bin/wh
sudo chmod +x /usr/local/bin/wh
sudo wh
```

License: source-available for reference only. All rights reserved by Encodev.

## What It Does

- Sets up a fresh Debian web server.
- Uses Debian's Caddy package only, with automatic HTTPS.
- Refuses setup when Apache or Nginx is active or enabled.
- Restricts the SSH port to one whitelisted IPv4 with UFW.
- Hardens SSH while preserving non-root admin access.
- Installs simple Fail2ban SSH protection.
- Installs selectable PHP-FPM versions from Sury.
- Installs MariaDB with root socket authentication.
- Installs verified WP-CLI/Adminer release assets.
- Serves Adminer at `https://<admin-host>/dba`, restricted by IP.
- Creates isolated site users with SFTP-only access.
- Hosts sites from `/home/<site-user>/public_html`.
- Generates site usernames like `site_example_com`.
- Can download latest WordPress files during WordPress site creation.
- Normalizes site file permissions before enabling a site.
- Adds defensive Caddy rules for sensitive files and upload paths.
- Lets each site choose its `www` alias behavior.
- Creates per-site PHP-FPM pools, logs, databases, and credentials.
- Lets existing sites switch to another installed PHP-FPM version.
- Scans server/site config for Apache migration leftovers.
- Saves generated credentials under `/root/wh-cli/sites`.
- Backs up managed config changes under `/root/wh-cli/backups`.

## Menu

```text
1. Setup server
2. Add site
3. List sites
4. Disable site
5. Enable site
6. Change site PHP version
7. Install PHP version
8. Scan server
9. Scan site
10. Exit
```

The CLI is interactive only for now. Command arguments can be added later.
