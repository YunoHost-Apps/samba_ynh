
**Pour pouvoir accéder aux dossiers partagés, chaque utilisateur pré-existant doit mettre à jour son mot de passe.**

#### Accéder à un répertoire utilisateur

L'utilisateur peut accéder à son répertoire personnel au travers de son explorateur de fichier avec l'adresse suivante : "smb://UTILISATEUR_YUNOHOST:MOT_DE_PASSE_YUNOHOST@HÔTE_YUNOHOST".


#### Partager d'autres répertoires

1. Créez un nouveau dossier partagé en remplissant le champ "Liste des répertoires partagés".
2. Activez les "Paramètres avancés" si vous souhaitez configurer des répertoires en lecture seule ou de façon à les cacher.
    a. Ajoutez les répertoires déjà créés dans le champ "Liste des répertoires en lecture seule" et/ou dans le champ "Liste des répertoires cachés".
3. Configurez les permissions d'accès aux répertoires sous "Tuiles et permissions" -> "Permission 'NOM_DU_RÉPERTOIRE'" -> remplissez le champ "Groupes/comptes autorisés". Il est aussi possible de le faire depuis la page [Groupes et autorisations](/yunohost/admin/#/groups).
4. L'utilisateur peut accéder à ce répertoire au travers de son explorateur de fichier avec l'adresse suivante : "smb://UTILISATEUR_YUNOHOST:MOT_DE_PASSE_YUNOHOST@HÔTE_YUNOHOST/RÉPERTOIRE_PARTAGÉ".

---

Notes :
- Pour accéder aux répertoires, tous les paramètres sont optionnels à l'exception de "HÔTE_YUNOHOSTE". Il vous sera tout de même demandé de vous identifier.
- Les répertoires cachés ne sont pas visibles mais restent accessibles en spécifiant le paramètre "RÉPERTOIRE_PARTAGÉ".