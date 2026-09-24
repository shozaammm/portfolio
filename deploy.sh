#!/bin/bash
# One-command deploy script for Soham Portfolio
set -e

MSG="${1:-Update portfolio}"

echo "📦 Staging changes..."
git add .

echo "💾 Committing with message: '$MSG'..."
git commit -m "$MSG" || echo "No changes to commit."

echo "🚀 Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Deployed successfully!"
echo "🌐 Live link: https://shozaammm.github.io/portfolio/"
echo "⏳ GitHub Pages will reflect changes in ~30 seconds."
