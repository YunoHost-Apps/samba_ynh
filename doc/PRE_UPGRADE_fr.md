### Limites connues

- LDAP non connecté, usage des 'hook' (post_user_create, post_user_update) :
    - Les utilisateurs déjà existants, y compris l'administrateur, doivent changer leurs mots de passe pour accéder à Samba.
    - Lors du changement de mot de passe, les 'hook' affichent le mot de passe utilisateur dans les journaux (logs).