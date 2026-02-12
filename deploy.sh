#!/bin/bash

# Aggiorna repo locale da GitHub
git pull origin main

# Copia i file sul server UniRoma3
rsync -avz --delete ./ fresta@www.mat.uniroma3.it:/www/public/users/fresta/

echo "Deploy completato!"
