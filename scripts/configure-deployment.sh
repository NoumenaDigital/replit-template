#!/bin/bash
# Generate environment configuration from tenant and app name
# This script derives all URLs from NPL_TENANT and NPL_APP
#
# Configuration sources (in priority order):
# 1. noumena.config file (recommended - committed to repo)
# 2. Environment variables / Replit Secrets

set -e

echo "🔧 Retrieving Noumena Cloud deployment configuration..."

# Try to load from noumena.config first
if [ -f "noumena.config" ]; then
    echo "📁 Found noumena.config file"
    # Source the config file (it uses shell variable syntax)
    source noumena.config
else
    echo ""
    echo "❌ Error: noumena.config file not found"
    echo ""
    echo "   Please create a noumena.config file in the project root with:"
    echo "   NPL_TENANT=your-tenant"
    echo "   NPL_APP=your-app"
    echo ""
    exit 1
fi

# Check if we have the required values, prompt if missing
if [ -z "$NPL_TENANT" ]; then
    echo ""
    # Prompt for NPL_TENANT
    read -p "🏢 Enter your NPL_TENANT: " NPL_TENANT
    # Check if still empty
    if [ -z "$NPL_TENANT" ]; then
        echo ""
        echo "❌ Error: NPL_TENANT cannot be empty"
        echo ""
        exit 1
    fi
    # Update noumena.config file
    if [ -f "noumena.config" ]; then
        sed -i.bak "s/^NPL_TENANT=.*/NPL_TENANT=$NPL_TENANT/" noumena.config
        rm -f noumena.config.bak
        echo "✅ Updated NPL_TENANT in noumena.config"
    fi
fi

if [ -z "$NPL_APP" ]; then
    echo ""
    # Prompt for NPL_APP
    read -p "📱 Enter your NPL_APP: " NPL_APP
    # Check if still empty
    if [ -z "$NPL_APP" ]; then
        echo ""
        echo "❌ Error: NPL_APP cannot be empty"
        echo ""
        exit 1
    fi
    # Update noumena.config file
    if [ -f "noumena.config" ]; then
        sed -i.bak "s/^NPL_APP=.*/NPL_APP=$NPL_APP/" noumena.config
        rm -f noumena.config.bak
        echo "✅ Updated NPL_APP in noumena.config"
    fi
fi

echo ""
echo "📋 Current configuration:"
echo "   NPL_TENANT: $NPL_TENANT"
echo "   NPL_APP:    $NPL_APP"
echo ""
echo "💡 To adjust these values, edit the noumena.config file"

