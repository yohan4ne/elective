#!/bin/bash
set -e

echo "🔨 Installing Composer dependencies..."
composer install --no-dev --prefer-dist --no-interaction --optimize-autoloader

echo "📦 Installing npm dependencies..."
npm install --production --omit=dev

echo "🏗️ Building frontend assets..."
npm run build

echo "✅ Build completed successfully!"
