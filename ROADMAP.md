# Encodev WH CLI Roadmap

Possible future features for Encodev WH CLI.

## Site Migration

- Change the domain or subdomain for an existing site.
- Update the managed Caddy config and enabled symlink.
- Update saved credentials metadata.
- Optionally update WordPress `siteurl` and `home` with WP-CLI.
- Optionally add redirects from the old host to the new host.

## WordPress Helpers

- Create `wp-config.php` from generated database credentials.
- Run optional `wp core install`.
- Check plugin, theme, and core update status.
- Repair common WordPress file permissions.

## Database Operations

- Backup and restore a single site database.
- Rotate a site database password.
- Export database credentials from saved metadata.

## Site Operations

- Repair permissions for an existing site.
- Rotate SFTP password.
- Clone an existing site to a new domain.
- Remove a site with clear confirmation and backups.

## Security And Scanning

- Deeper Apache migration scan.
- Detect exposed secrets in web roots.
- Check for writable files and unsafe permissions.
- Check WordPress upload paths for executable PHP files.

## Automation

- Add non-interactive flags after the interactive flow is stable.
- Support dry-run summaries.
- Export machine-readable status output.
