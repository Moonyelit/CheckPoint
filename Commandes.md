# Commandes CheckPoint

## Démarrage des serveurs

### Serveur Symfony (Backend)
```bash
cd CheckPoint-API
symfony serve
```

### Serveur Next.js (Frontend)
```bash
cd CheckPoint-Next.JS
npm run dev
```

## Commandes de développement

### Nettoyage du cache Next.js
```bash
cd CheckPoint-Next.JS
rmdir /s /q .next
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

## Débogage

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

## Arrêt des serveurs

### Arrêter Symfony
```bash
taskkill /F /IM "symfony.exe" /T
```

### Arrêter Next.js
```bash
taskkill /F /IM "node.exe" /T
```

## Notes
- Le serveur Symfony tourne sur http://localhost:8000
- Le serveur Next.js tourne sur http://localhost:3000
- Pour arrêter les serveurs, vous pouvez aussi utiliser Ctrl+C dans les terminaux respectifs
- En cas d'erreur 500, vérifiez les logs avec `symfony server:log` 