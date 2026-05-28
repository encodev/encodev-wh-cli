# Encodev WH CLI Roadmap

Possible future features for Encodev WH CLI.

## Site Migration

- Change the domain or subdomain for an existing site.
- Update the managed Caddy config and enabled symlink.
- Update saved credentials metadata.
- Optionally update WordPress `siteurl` and `home` with WP-CLI.
- Optionally add redirects from the old host to the new host.
- Document common `.htaccess` to Caddy migration patterns, including WordPress
  rewrites, SPA fallbacks, language redirects, static fallback routing, and
  legacy host redirects.

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
- Support optional per-site custom Caddy include files for routing rules that
  should stay outside CLI-managed blocks. The generated site config could import
  `/etc/caddy/sites-custom/<domain>.caddy` near the top of the site block, before
  the CLI-managed fallback/PHP/static handling, while the CLI continues to own
  the main generated config and the managed security block.

## Security And Scanning

- Deeper Apache migration scan.
- Detect exposed secrets in web roots.
- Check for writable files and unsafe permissions.
- Check WordPress upload paths for executable PHP files.
- Support explicit per-site exceptions to managed security rules, such as
  documented PHP endpoint allowlists under upload/data paths, without editing the
  managed block directly.
- Add a validate-all-sites workflow that checks Caddy config validity, webroot
  existence, symlinks, PHP-FPM pools, enabled symlinks, and custom include files
  for every managed site.

## Automation

- Add non-interactive flags after the interactive flow is stable.
- Support dry-run summaries.
- Export machine-readable status output.
