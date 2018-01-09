Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

USER STORY

UTILISATEURS

Un nouvel utilisateur, en arrivant sur la page d'accueil, est invité à s'inscrire, via son adresse mail (il devra alors confirmer son adresse mail) ou via Facebook. Une fois inscrit (et le mail validé le cas échéant), il a accès à un premier formulaire, dans lequel il renseignera ses informations personnelles (niveau d'étude, diplôme recherché...).
Après validation des informations, l'utilisateur peut choisir un des trois packs proposés, et payer par carte bancaire (via l'appli Stripe).
Il a alors accès à son "dashboard", soit 4 onglets "Mon suivi", "Mes suggestions", "Mon profil" et "Mon logement".
  - Mon suivi : il peut visualiser l'avancement de sa commande. Les différentes étapes s'affichent en vert quand elles sont validées.
  - Mes suggestions : il peut voir les suggestions de diplômes proposées par l'équipe de Do It Abroad.
  - Mon profil : il peut modifier ses informations, et uploader ses documents le cas échéant.
  - Mon logement : il est invité à choisir le pack Premium pour bénéficier de l'option logement de DIA (pas de feature pour le moment là dessus).

ADMINISTRATEURS

Le compte Admin de DIA permet aux administrateurs de gérer leur app via un dashboard dédié. Le dashboard admin n'est accessible qu'aux utilisateurs ayant un status admin.
Le dashboard admin permet de visualiser (et d'éditer) :
 - Les utilisateurs et toutes leurs informations (sauf mot de passe du compte).
 - Les trois packs et toutes leurs informations.
 - Les diplômes contenus dans la base de donnée DIA et toutes leurs informations.
 - Les réservations effectuées par les utilisateurs et toutes leurs informations.
 - Les suggestions créées par l'équipe DIA et proposées aux utilisateurs.

Packs, diplômes, réservations, suggestions et utilisateurs peuvent être créés, modifiés ou supprimés depuis le dashboard admin. Chaque élément de ces 5 catégories a un identifiant unique, permettant de le retrouver partout dans l'app. Il convient de bien faire attention aux manips effectuées sur le dashboard, car un élément supprimé ne pourra pas être récupéré.




MAILING

La gestion du mailing est effectuée via PostMark (postmarkapp.com). PostMark permet de gérer les différents modèles de mails envoyés et d'avoir un retour sur l'activité de l'app (point de vue mailing uniquement).
L'édition de modèles de mails se fait en HTML via la section "Templates" de l'app PostMark.

IMAGE UPLOAD

Le stockage d'images est effectué via un service externe, Cloudinary (cloudinary.com). Toutes les images présentes sur l'app DIA sont uploadées sur Cloudinary et accessibles depuis leur site (sauf photos de profil via le compte facebook).

PRODUCTION

L'app DIA est hébergée chez Clever Cloud, dans l'organisation DO IT ABROAD.

REPOSITORIES

L'app est pushée sur un repo privé sur GitLab. Le propriétaire de ce repo est DO IT ABROAD.
