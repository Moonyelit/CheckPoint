# Commandes CheckPoint

## ⚡ Démarrage rapide

### 🚨 ÉTAPES IMPORTANTES DANS L'ORDRE :

1. **LANCER WAMPSERVER** (obligatoire pour la base de données MySQL)
2. **Démarrer l'API Symfony** depuis le répertoire `CheckPoint-API`
3. **Démarrer le frontend Next.js** depuis le répertoire `CheckPoint-Next.JS`

## 🖥️ Démarrage des serveurs

### 1. Serveur Symfony (Backend)
```bash
cd CheckPoint-API
symfony serve
```

### 2. Serveur Next.js (Frontend)
```bash
cd CheckPoint-Next.JS
npm run dev
```

## 📊 Commandes principales

### Gestion des wallpapers
```bash
# Scanner les wallpapers manquants
php bin/console app:scan-wallpapers

# Importer les wallpapers depuis la config
php bin/console app:import-wallpapers-config

# Forcer l'import des wallpapers
php bin/console app:import-wallpapers-config --force
```

### Gestion des jeux
```bash
# Importer le Top 100 des jeux
php bin/console app:import-top100-games

# Importer les meilleurs jeux de l'année
php bin/console app:import-top-year-games

# Nettoyer les jeux de faible qualité
php bin/console app:clean-low-quality-games
```

### Maintenance des images
```bash
# Debug des images
php bin/console app:debug-images

# Correction des images
php bin/console app:fix-images
```

## 🔧 Maintenance système

### Nettoyage du cache
```bash
# API Symfony
cd CheckPoint-API
php bin/console cache:clear

# Frontend Next.js
cd CheckPoint-Next.JS
rmdir /s /q .next
npm run dev
```

### Mise à jour des dépendances
```bash
# API Symfony
cd CheckPoint-API
composer install

# Frontend Next.js
cd CheckPoint-Next.JS
npm install
```

## 📝 Description des commandes

### Commandes de wallpapers
- `app:scan-wallpapers` : Scanne le dossier des wallpapers et détecte les nouveaux fichiers
- `app:import-wallpapers-config` : Importe les wallpapers depuis le fichier de configuration

### Commandes de jeux
- `app:import-top100-games` : Importe les 100 meilleurs jeux de tous les temps (note ≥85, votes ≥50)
- `app:import-top-year-games` : Importe les meilleurs jeux de l'année (note ≥75, votes ≥100)
- `app:clean-low-quality-games` : Supprime les jeux de faible qualité (moins de 30 votes)

### Commandes de maintenance
- `app:debug-images` : Analyse l'état des images sans faire de modifications
- `app:fix-images` : Corrige et améliore la qualité des images

## 🐛 Débogage

### Vérifier l'état du serveur
```bash
cd CheckPoint-API
symfony server:status
symfony server:log
```

### Vérifier la configuration
```bash
cd CheckPoint-API
symfony console debug:router
symfony console debug:config
```

## ⏹️ Arrêt des serveurs

### Arrêter Symfony
```bash
cd CheckPoint-API
symfony server:stop
```

### Arrêter Next.js
```bash
# Ctrl+C dans le terminal ou
taskkill /F /IM "node.exe" /T
```

## 📊 URLs et endpoints

### Serveurs
- **API Symfony** : http://127.0.0.1:8000
- **Frontend Next.js** : http://localhost:3000
- **Documentation API** : http://127.0.0.1:8000/api/docs

### Endpoints API principaux
- **Jeux** : http://127.0.0.1:8000/api/games
- **Top 100** : http://127.0.0.1:8000/api/games/top100
- **Inscription** : http://127.0.0.1:8000/api/register
- **Connexion** : http://127.0.0.1:8000/api/login_check

## 🚨 Résolution de problèmes courants

### Erreur "symfony serve" ne fonctionne pas
1. Vérifiez que vous êtes dans le répertoire `CheckPoint-API`
2. Vérifiez que WampServer est démarré
3. Essayez `symfony server:stop` puis `symfony serve`

### Erreur "Failed to fetch" côté Next.js
1. Vérifiez que l'API Symfony est démarrée sur le port 8000
2. Vérifiez le fichier `.env.local` dans `CheckPoint-Next.JS` :
   ```
   NEXT_PUBLIC_API_URL=http://127.0.0.1:8000
   ```
3. Redémarrez le serveur Next.js après modification

### Erreur "Port déjà utilisé"
1. Arrêtez tous les serveurs : `symfony server:stop`
2. Forcez l'arrêt : `taskkill /F /IM "symfony.exe" /T`
3. Relancez : `symfony serve`

### Erreur de base de données
1. Vérifiez que WampServer est démarré
2. Vérifiez la configuration dans `CheckPoint-API/.env.local`
3. Testez la connexion MySQL sur phpMyAdmin

## 📝 Notes importantes
- **Toujours démarrer WampServer EN PREMIER**
- Le serveur Symfony tourne sur http://127.0.0.1:8000
- Le serveur Next.js tourne sur http://localhost:3000
- Pour arrêter proprement, utilisez Ctrl+C dans les terminaux respectifs
- En cas d'erreur 500, vérifiez les logs avec `symfony server:log`
- **ATTENTION** : Bien se placer dans les bons répertoires (`CheckPoint-API` ou `CheckPoint-Next.JS`)
- Les variables d'environnement sont dans les fichiers `.env.local` de chaque projet 