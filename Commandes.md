# Commandes CheckPoint

## ⚡ Démarrage rapide

### 🚨 ÉTAPES IMPORTANTES DANS L'ORDRE :

1. **LANCER WAMPSERVER** (obligatoire pour la base de données MySQL)
2. **Démarrer l'API Symfony** depuis le répertoire `CheckPoint-API`
3. **Démarrer le frontend Next.js** depuis le répertoire `CheckPoint-Next.JS`

## 🖥️ Démarrage des serveurs

### 1. Serveur Symfony (Backend)
```bash
# Se déplacer dans le bon répertoire
cd CheckPoint-API

# Démarrer le serveur
symfony serve
```

**Alternative en mode daemon (arrière-plan) :**
```bash
cd CheckPoint-API
symfony serve -d
```

### 2. Serveur Next.js (Frontend)
```bash
# Se déplacer dans le bon répertoire
cd CheckPoint-Next.JS

# Démarrer le serveur de développement
npm run dev
```

## 🔧 Commandes de développement

### Nettoyage du cache Next.js
```bash
cd CheckPoint-Next.JS
rmdir /s /q .next
npm run dev
```

### Build Next.js
```bash
cd CheckPoint-Next.JS
npm run build
```

### Build Next.js avec hot-reload
```bash
cd CheckPoint-Next.JS
npm run build:hot
```

### Installer les dépendances Next.js
```bash
cd CheckPoint-Next.JS
npm install
```

### Mettre à jour les dépendances Symfony
```bash
cd CheckPoint-API
composer install
```

## 🐛 Débogage et diagnostics

### Vérifier l'état du serveur Symfony
```bash
cd CheckPoint-API
symfony server:status
```

### Voir les logs Symfony
```bash
cd CheckPoint-API
symfony server:log
```

### Vider le cache Symfony
```bash
cd CheckPoint-API
symfony console cache:clear
```

### Vérifier les routes Symfony
```bash
cd CheckPoint-API
symfony console debug:router
```

### Vérifier la configuration Symfony
```bash
cd CheckPoint-API
symfony console debug:config
```

### Tester l'API manuellement
```bash
# Test simple de l'API
curl http://127.0.0.1:8000/api/games

# Test avec PowerShell
Invoke-WebRequest -Uri "http://127.0.0.1:8000/api/games" -Method GET
```

## ⏹️ Arrêt des serveurs

### Arrêter Symfony (méthode douce)
```bash
cd CheckPoint-API
symfony server:stop
```

### Arrêter Symfony (méthode forcée)
```bash
taskkill /F /IM "symfony.exe" /T
```

### Arrêter Next.js (Ctrl+C dans le terminal ou méthode forcée)
```bash
taskkill /F /IM "node.exe" /T
```

### Arrêter tous les processus PHP (en cas de problème)
```bash
taskkill /F /IM "php-cgi.exe" /T
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