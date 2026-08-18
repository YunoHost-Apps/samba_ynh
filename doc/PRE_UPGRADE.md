### Known limitations

- not using LDAP, relying on hooks (post_user_create, post_user_update):
    - Already existing users, including admin, need to reset their passwords to access Samba.
    - When resetting their passwords, hooks output users password in logs.