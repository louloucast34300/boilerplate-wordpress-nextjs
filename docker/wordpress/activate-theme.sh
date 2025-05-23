#!/bin/bash

# Attendre que la base de données soit prête
until wp db check --path=/var/www/html --allow-root; do
  echo "Waiting for database..."
  sleep 3
done

# Vérifier si WordPress est déjà installé
if wp core is-installed --path=/var/www/html --allow-root; then
  echo "WordPress is installed, activating theme..."
  wp theme activate twentytwentyone --path=/var/www/html --allow-root
else
  echo "WordPress not installed yet, skipping theme activation."
fi

# Lancer Apache
exec apache2-foreground