#!/bin/bash
# PinoySeoul Infrastructure Catalogue - Watchtower Sync Script
# This script allows servers to "Check-in" to the Project Dashboard.

PROJECT_ID="PVT_kwDOA4eG_84BS-up"
SYNC_FIELD_ID="PVTF_lADOA4eG_84BS-upzhAXTu4"
GITHUB_TOKEN=$1

if [ -z "$GITHUB_TOKEN" ]; then
    echo "Usage: ./update-board.sh <GITHUB_TOKEN>"
    exit 1
fi

REPORT_TIME=$(date -u +"%Y-%m-%d %H:%M UTC")

echo "🔍 Scanning containers..."
docker ps --format "{{.Names}}" | while read container; do
    # Robust matching: Strip common prefixes/suffixes to match board item names
    BASE_NAME=$(echo $container | sed -E 's/^(mediaserver|productionserver|homelab)_//' | cut -d'_' -f1 | cut -d'-' -f1)
    
    echo "📡 Reporting Watchtower Sync for $BASE_NAME ($container)..."
    
    # GraphQL lookup for item ID
    ITEM_ID=$(curl -s -H "Authorization: token $GITHUB_TOKEN" -X POST -d "{\"query\": \"query { organization(login: \\\"pinoyseoul\\\") { projectV2(number: 3) { items(first: 100) { nodes { id fieldValues(first: 10) { nodes { ... on ProjectV2ItemFieldTextValue { text } } } } } } } }\"}" https://api.github.com/graphql | jq -r ".data.organization.projectV2.items.nodes[] | select(.fieldValues.nodes[].text == \"$BASE_NAME\") | .id" | head -n 1)

    if [ -n "$ITEM_ID" ] && [ "$ITEM_ID" != "null" ]; then
        curl -s -H "Authorization: token $GITHUB_TOKEN" -X POST -d "{\"query\": \"mutation { updateProjectV2ItemFieldValue(input: {projectId: \\\"$PROJECT_ID\\\", itemId: \\\"$ITEM_ID\\\", fieldId: \\\"$SYNC_FIELD_ID\\\", value: {text: \\\"$REPORT_TIME\\\"}}) { projectV2Item { id } } }\"}" https://api.github.com/graphql > /dev/null
        echo "✅ Reported successfully."
    else
        echo "⏭️ $BASE_NAME not found on dashboard. Skipping."
    fi
done
