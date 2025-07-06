#!/bin/bash

# Script de démarrage automatique pour CheckPoint
# Démarre MySQL et Apache2

echo "🚀 Démarrage des services CheckPoint..."

# Démarrer MySQL
echo "📊 Démarrage de MySQL..."
sudo systemctl start mysql
if [ $? -eq 0 ]; then
    echo "✅ MySQL démarré avec succès"
else
    echo "❌ Erreur lors du démarrage de MySQL"
    exit 1
fi

# Démarrer Apache2
echo "🌐 Démarrage d'Apache2 sur le port 8080..."
sudo systemctl start apache2
if [ $? -eq 0 ]; then
    echo "✅ Apache2 démarré avec succès sur le port 8080"
else
    echo "❌ Erreur lors du démarrage d'Apache2"
    exit 1
fi

# Vérifier les services
echo "🔍 Vérification des services..."
sudo systemctl is-active mysql > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ MySQL est actif"
else
    echo "❌ MySQL n'est pas actif"
fi

sudo systemctl is-active apache2 > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ Apache2 est actif"
else
    echo "❌ Apache2 n'est pas actif"
fi

echo ""
echo "🎉 Services CheckPoint prêts !"
echo "📊 MySQL: 127.0.0.1:3306"
echo "🌐 Apache2: http://localhost:8080"
echo ""
echo "Pour démarrer votre projet complet :"
echo "1. cd CheckPoint-API && php bin/console server:start 127.0.0.1:8000"
echo "2. cd CheckPoint-Next.JS && npm run dev" 