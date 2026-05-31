# Encodev WH CLI Roadmap

Priority-ordered future work for Encodev WH CLI.

## P0 - Security And Operational Safety

1. Make setup safe to rerun for installs, updates, repairs, and admin allowlist changes.
2. Validate all managed sites.
3. Scan sites for exposed files and malware indicators.
4. Review PHP-FPM function restrictions.
5. Add an optional strict PHP-FPM hardening profile.
6. Support IPv6 admin allowlists.

## P1 - Recovery And Site Maintenance

1. Repair site permissions.
2. Back up and restore site files.
3. Back up and restore site databases.
4. Roll back failed operations.
5. Rotate database passwords.
6. Rotate SFTP passwords.
7. Remove sites safely.
8. Manage per-site PHP settings.
9. Export saved database credentials.
10. Manage dedicated Adminer DBA credentials.

## P2 - WordPress And Migration

1. Generate `wp-config.php` from saved credentials.
2. Run optional WordPress core installs.
3. Check WordPress update status.
4. Repair WordPress file permissions.
5. Improve Apache migration scanning.
6. Rename site domains.
7. Update WordPress URLs during renames.
8. Add redirects during renames.
9. Clone sites.
10. Document `.htaccess` to Caddy migration patterns.

## P3 - Routing, Customization, And Automation

1. Export machine-readable status output.
2. Organize the interactive menu by workflow.
3. Support dry-run summaries.
4. Add non-interactive flags.
