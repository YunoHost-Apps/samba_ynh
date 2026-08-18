Je comprends que cette application est uniquement destinée à des fins de réseau privé et que je ne dois pas l'installer sur un serveur avec une adresse IP publique ou ouvrir le port 445 sur mon routeur domestique.

### Limites connues

- LDAP non connecté, usage des 'hook' (post_user_create, post_user_update) :
    - Les utilisateurs déjà existant, y compris l'administrateur, doivent changer leurs mots de passe pour accéder à Samba.
    - Lors du changement de mot de passe, les 'hook' affichent le mot de passe utilisateur dans les journaux (logs).