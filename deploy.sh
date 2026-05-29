#!/bin/bash
# Cloudflare Pages direct upload using API
ACCOUNT_ID="6d3cd97f25b437e8e3f285ec121b3051"
PROJECT="gofest-cph-2026"

# Check if pages project exists
curl -s -X GET "https://api.cloudflare.com/client/v4/accounts/$ACCOUNT_ID/pages/projects/$PROJECT" \
  -H "Authorization: Bearer $CLOUDFLARE_API_TOKEN" 2>&1 || echo "Need token"
