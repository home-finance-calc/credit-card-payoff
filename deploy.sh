#!/bin/bash

#############################################
# Credit Card Payoff Calculator
# Streamlined Deployment Script
#############################################

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
ORG_NAME="creditcardpayoffcalc"
REPO_NAME="${ORG_NAME}.github.io"
PROJECT_DIR="/Users/ares/projects/credit-card-payoff-calculator"
SITE_URL="https://${ORG_NAME}.github.io/"

echo -e "${BLUE}============================================${NC}"
echo -e "${BLUE}  Credit Card Payoff Calculator Deployer${NC}"
echo -e "${BLUE}============================================${NC}"
echo ""

cd "$PROJECT_DIR"

#############################################
# Step 1: Check Prerequisites
#############################################
echo -e "${YELLOW}[1/5] Checking prerequisites...${NC}"

if ! command -v git &> /dev/null; then
    echo -e "${RED}Error: git is not installed${NC}"
    exit 1
fi

if ! command -v gh &> /dev/null; then
    echo -e "${YELLOW}GitHub CLI (gh) not found. Manual steps will be needed.${NC}"
    GH_AVAILABLE=false
else
    GH_AVAILABLE=true
fi

echo -e "${GREEN}✓ Prerequisites checked${NC}"
echo ""

#############################################
# Step 2: Initialize Git Repository
#############################################
echo -e "${YELLOW}[2/5] Setting up git repository...${NC}"

if [ ! -d ".git" ]; then
    git init
    echo -e "${GREEN}✓ Git repository initialized${NC}"
else
    echo -e "${GREEN}✓ Git repository already exists${NC}"
fi

# Check if remote exists
if git remote get-url origin &> /dev/null; then
    echo -e "${GREEN}✓ Remote 'origin' already configured${NC}"
else
    git remote add origin "https://github.com/${ORG_NAME}/${REPO_NAME}.git"
    echo -e "${GREEN}✓ Remote 'origin' added${NC}"
fi
echo ""

#############################################
# Step 3: Commit Changes
#############################################
echo -e "${YELLOW}[3/5] Committing changes...${NC}"

git add .

if git diff --cached --quiet; then
    echo -e "${GREEN}✓ No changes to commit${NC}"
else
    git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"
    echo -e "${GREEN}✓ Changes committed${NC}"
fi
echo ""

#############################################
# Step 4: Push to GitHub
#############################################
echo -e "${YELLOW}[4/5] Pushing to GitHub...${NC}"

# Ensure we're on main branch
git branch -M main

if git push -u origin main 2>/dev/null; then
    echo -e "${GREEN}✓ Pushed to GitHub${NC}"
else
    echo -e "${RED}Could not push to GitHub.${NC}"
    echo -e "${YELLOW}Please ensure:${NC}"
    echo -e "  1. You've created the organization '${ORG_NAME}' on GitHub"
    echo -e "  2. You've created the repository '${REPO_NAME}' in that organization"
    echo -e "  3. You have push access to the repository"
    echo ""
    echo -e "${YELLOW}Manual steps:${NC}"
    echo -e "  1. Go to: https://github.com/organizations/plan"
    echo -e "  2. Create organization: ${ORG_NAME}"
    echo -e "  3. Create repository: ${REPO_NAME}"
    echo -e "  4. Run this script again"
    exit 1
fi
echo ""

#############################################
# Step 5: Display Success Info
#############################################
echo -e "${YELLOW}[5/5] Deployment complete!${NC}"
echo ""
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN}  ✅ DEPLOYMENT SUCCESSFUL${NC}"
echo -e "${GREEN}============================================${NC}"
echo ""
echo -e "${BLUE}Your site will be live at:${NC}"
echo -e "  ${SITE_URL}"
echo ""
echo -e "${BLUE}Note: It may take 1-2 minutes for GitHub Pages to deploy.${NC}"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo -e "  1. Enable GitHub Pages:"
echo -e "     → Go to: https://github.com/${ORG_NAME}/${REPO_NAME}/settings/pages"
echo -e "     → Source: Deploy from branch"
echo -e "     → Branch: main, / (root)"
echo -e ""
echo -e "  2. Apply for Google AdSense:"
echo -e "     → Go to: https://www.google.com/adsense/"
echo -e "     → Website URL: ${SITE_URL}"
echo -e "     → Get your Publisher ID (pub-XXXX)"
echo -e ""
echo -e "  3. Update Publisher ID in files:"
echo -e "     → Run: sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_ID/g' *.html ads.txt"
echo -e "     → Commit and push again"
echo ""
echo -e "${GREEN}============================================${NC}"

