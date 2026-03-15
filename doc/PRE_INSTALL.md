I understand this app is only for private network purpose and i should not install it on a server with a public IP or open the 445 port on my home router.

### Known limitations

- not using LDAP, relying on hooks (post_user_create, post_user_update):
    - Already existing users, including admin, need to reset their passwords to access Samba.
    - When resetting their passwords, hooks output users password in logs.
- "List of readonly directories" and "List of unbrowseable directories" field selectors aren't pre-populated nor verifies that directories have been shared.
- field error messages aren't displayed in config panel. Partial fix: redirect to logs.
