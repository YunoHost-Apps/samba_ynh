
**Already existing users, including admin, need to reset their passwords to access Samba.**

#### Access user directory

User can connect through their file browser with "smb://YUNOHOST_USER:YUNOHOST_PASSWORD@YUNOHOST_HOST".

#### Share other directory

1. Create shared folders by filling "List of shared directories" field.
2. Enable "Advanced parameter" if you want to set read-only or unbrowseable folders.
    a. Add already existing shared folders into "List of readonly directories" and/or "List of unbrowseable directories" fields. 
3. Configure folder access under "Tiles and permissions" -> "Permission 'NAME_OF_YOUR_FOLDER'" -> fill "Groups/users allowed to access" field and/or on [Manage groups and permissions page](/yunohost/admin/#/groups).
4. User can connect through their file browser with "smb://YUNOHOST_USER:YUNOHOST_PASSWORD@YUNOHOST_HOST/SHARED_DIRECTORY".

---

Notes:
- Every parameter is optional except YUNOHOST_HOST in order to access directories, you will still be asked to login.
- Unbrowseable folders are not visible but can be accessed specifying SHARED_DIRECTORY parameter.