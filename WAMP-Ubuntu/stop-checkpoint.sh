#!/bin/bash

# Script d'arrêt pour CheckPoint
# Arrête MySQL et Apache2

echo "🛑 Arrêt des services CheckPoint..."

# Arrêter Apache2
echo "🌐 Arrêt d'Apache2..."
sudo systemctl stop apache2
if [ $? -eq 0 ]; then
    echo "✅ Apache2 arrêté avec succès"
else
    echo "❌ Erreur lors de l'arrêt d'Apache2"
fi

# Arrêter MySQL
echo "📊 Arrêt de MySQL..."
sudo systemctl stop mysql
if [ $? -eq 0 ]; then
    echo "✅ MySQL arrêté avec succès"
else
    echo "❌ Erreur lors de l'arrêt de MySQL"
fi

echo ""
echo "🎉 Services CheckPoint arrêtés !" 