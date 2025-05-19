# Checkpoint 🚀  
Bienvenue dans le projet CheckPoint ! Ce répertoire contient l'ensemble des fichiers nécessaires au bon fonctionnement et à la compréhension de ce projet. Vous trouverez ici le code source, la documentation, des scripts utiles, et bien plus encore. 🎉

## Table des matières 📑
1. [Description](#description-💻)
2. [Structure du dossier](#structure-du-dossier-📂)
3. [Prérequis](#prérequis-⚙️)
4. [Installation & Utilisation](#installation--utilisation-🔧)
5. [Parties du projet](#parties-du-projet-📁)
6. [Contact](#contact-✉️)

## Description 💻
Checkpoint est un site web conçu pour permettre aux utilisateurs de suivre leur progression dans les jeux vidéo.  
Avec Checkpoint, vous pouvez :
- Recenser les jeux que vous avez terminés ou commencés.
- Suivre le temps de jeu total pour chaque jeu.
- Organiser et visualiser votre bibliothèque de jeux vidéo.  

Ce projet s'adresse aux passionnés de jeux vidéo souhaitant garder une trace de leurs aventures vidéoludiques et optimiser leur expérience de jeu. ✨  
**Ce projet est également réalisé dans le cadre de la validation de ma certification Bac +2.**  


## Structure du dossier 📂
Voici un aperçu de l'organisation des fichiers et dossiers importants :
- `CheckPoint-API/` : Contient le back-end du projet, incluant l'API, la gestion des utilisateurs, la connexion, et l'intégration avec l'API IGDB. Ce dossier correspond à un repository GitHub privé.
- `CheckPoint-Next.JS/` : Contient le front-end du projet, développé avec Next.js. Ce dossier correspond également à un repository GitHub privé.
- `Figma/Images/` : Contient toutes les images utilisées pour la conception des maquettes dans Figma.
- `.gitmodules` : Fichier permettant de gérer les sous-modules Git pour lier les repositories CheckPoint-API et CheckPoint-Next.JS.
- `CheckPoint.docx` : Document présentant le projet dans le cadre de la validation de votre certification Bac +2.
- `README.md` : Ce fichier, contenant la documentation principale du projet.

## Prérequis ⚙️
Avant de commencer, assurez-vous d'avoir installé :
- Node.js – version recommandée 16.x ou supérieure (pour le front-end avec Next.js).
- PHP – version recommandée 8.1 ou supérieure (pour le back-end avec Symfony).
- Composer – pour gérer les dépendances PHP.
- Git pour le versioning.
- Les dépendances spécifiques listées dans les fichiers `package.json` (front-end) et `composer.json` (back-end).

## Installation & Utilisation 🔧
Pour démarrer avec ce projet :

1. 🚀 **Cloner le dépôt principal avec les sous-modules** :
   ```bash
   git clone --recurse-submodules https://github.com/Moonyelit/CheckPoint.git
   ```

2. 📁 **Accéder au dossier principal** :
   ```bash
   cd CheckPoint
   ```

3. 📦 **Installer les dépendances pour le front-end (Next.js)** :
   ```bash
   cd CheckPoint-Next.JS
   npm install
   # Si vous avez des erreurs de dépendances manquantes, installez-les manuellement, par exemple :
   # npm install next @tailwindcss/postcss
   ```

4. 📦 **Installer les dépendances pour le back-end (Symfony)** :
   ```bash
   cd ../CheckPoint-API
   composer install
   ```

5. ⚙️ **Configurer les fichiers d'environnement** :
   - **Pour le front-end** : Créez un fichier `.env.local` dans `CheckPoint-Next.JS` avec le contenu suivant pour faire le lien avec l'API :
     ```
     NEXT_PUBLIC_API_URL=http://localhost:8000
     ```
   - **Pour le back-end** : Créez un fichier `.env.local` dans `CheckPoint-API` et configurez les variables d'environnement (ex. connexion à la base de données).

6. 🗄️ **Lancer les migrations de la base de données** (obligatoire avant d'importer les jeux) :
   ```bash
   cd CheckPoint-API
   php bin/console doctrine:migrations:migrate --no-interaction
   ```

7. 🎮 **Importer les jeux IGDB** (optionnel, si besoin) :
   ```bash
   php bin/console app:import-games
   ```

8. 🖥️ **Lancer les applications** :
   - **Avec les commandes classiques** :
     - **Front-end (Next.js)** :
       ```bash
       cd ../CheckPoint-Next.JS
       npm run dev
       ```
     - **Back-end (Symfony)** :
       ```bash
       cd ../CheckPoint-API
       symfony serve
       ```
   - **OU avec le Makefile** (plus simple) :
     ```bash
     make start 🚦
     # Pour arrêter : make stop 🛑
     # Pour redémarrer : make restart 🔄
     # Pour nettoyer le cache Next.js : make clean 🧹
     # Pour recompiler le build Next.js : make build 🏗️
     # Pour build hot-reload : make build-hot ♨️
     ```

9. 🌐 **Accéder à l'application** :
   - Front-end : Ouvrez [http://localhost:3000](http://localhost:3000) dans votre navigateur.
   - Back-end : L'API sera accessible à l'adresse [http://localhost:8000](http://localhost:8000).

---

**Remarque ⚠️ :**
- Si vous rencontrez des erreurs de dépendances lors du build Next.js, vérifiez que tous les modules nécessaires sont installés (`next`, `@tailwindcss/postcss`, etc.).
- Pour toute question, consultez la section Contact en bas du README. 💬

## Parties du projet 📁
Ce projet est composé de plusieurs parties distinctes :
1. **Figma** : Contient les images et maquettes utilisées pour la conception du projet.
2. **Front-end** : Développé avec Next.js, ce dépôt contient l'interface utilisateur du projet.
   - Lien vers le dépôt : [CheckPoint-Next.JS](https://github.com/Moonyelit/CheckPoint-Next.JS.git)
3. **Back-end** : Contient l'API du projet, incluant la gestion des utilisateurs, la connexion, et l'intégration avec l'API IGDB.
   - Lien vers le dépôt : [CheckPoint-API](https://github.com/Moonyelit/CheckPoint-API/tree/71257159c4bc8bffe05572fb5e5d33994f55a82e)
4. **Dossier projet** : Regroupe les documents et ressources liés à la gestion et à la présentation du projet.

## Contact ✉️
Pour toute question ou suggestion, vous pouvez me contacter :
- **LinkedIn** : [Elodie Fougerouse](https://www.linkedin.com/in/elodie-fougerouse-034772210/)
- **Portfolio** : [Moonye Dev](https://moonyelit.github.io/moonye-dev/)

Merci d'avoir pris le temps de parcourir ce projet !  
N'hésitez pas à explorer les fichiers et à contribuer à l'amélioration continue de ce travail. Bonne utilisation et à bientôt ! 😄🎈