#!/bin/bash
# ─────────────────────────────────────────────
# Best Buy Promo – Vercel Deploy Script
# ─────────────────────────────────────────────
# Prerequisites:
#   npm install -g vercel
#   vercel login
# ─────────────────────────────────────────────

set -e

echo "▶ Checking for Vercel CLI..."
if ! command -v vercel &> /dev/null; then
  echo "▶ Installing Vercel CLI..."
  npm install -g vercel
fi

echo "▶ Deploying to Vercel (production)..."
vercel --prod --yes

echo "✅ Done! Your Best Buy promo page is live on Vercel."
