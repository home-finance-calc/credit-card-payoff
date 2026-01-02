# Credit Card Payoff Calculator

A free, fast, and privacy-focused credit card payoff calculator. Calculate how long it will take to be debt-free based on your monthly payments.

**Live Site:** https://creditcardpayoffcalc.github.io/

## Features

- 💳 Calculate time to pay off credit card debt
- 📊 See total interest paid
- 💡 Compare to minimum payment scenarios
- 🔒 100% client-side - no data leaves your browser
- 📱 Fully responsive design
- ⚡ Fast and lightweight
- 🎨 Modern dark UI

## Deployment Guide

### Step 1: Create GitHub Organization (OPSEC-Friendly)

1. Go to https://github.com/organizations/plan
2. Click **"Create a free organization"**
3. **Organization name:** `creditcardpayoffcalc` (this becomes your URL)
4. **Contact email:** `tmobilestore944@gmail.com`
5. Skip inviting members (click "Complete setup")
6. Skip the survey if prompted

> **OPSEC Note:** Organization names are public but don't require personal info. Use a separate email for anonymity.

### Step 2: Create Repository in Organization

1. Go to your new org: https://github.com/creditcardpayoffcalc
2. Click **"New repository"** (or the green "Create a new repository" button)
3. **Repository name:** `creditcardpayoffcalc.github.io` (MUST match org name + .github.io)
4. Set to **Public** (required for free GitHub Pages)
5. Click **"Create repository"**

### Step 3: Push Code to Repository

Run these commands in your terminal:

```bash
cd /Users/ares/projects/credit-card-payoff-calculator

# Initialize git repository
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Credit Card Payoff Calculator"

# Add remote (replace with your actual org if different)
git remote add origin https://github.com/creditcardpayoffcalc/creditcardpayoffcalc.github.io.git

# Push to main branch
git branch -M main
git push -u origin main
```

### Step 4: Enable GitHub Pages

1. Go to your repo: https://github.com/creditcardpayoffcalc/creditcardpayoffcalc.github.io
2. Click **Settings** → **Pages** (in left sidebar)
3. Under "Source", select **"Deploy from a branch"**
4. Select **"main"** branch and **"/ (root)"** folder
5. Click **Save**
6. Wait 1-2 minutes, then visit: https://creditcardpayoffcalc.github.io/

---

## Google AdSense Setup

### Step 1: Apply for AdSense

1. Go to https://www.google.com/adsense/
2. Click **"Get Started"**
3. Sign in with your Google account
4. Enter your website URL: `https://creditcardpayoffcalc.github.io`
5. Email: `tmobilestore944@gmail.com`
6. Country: Select your country
7. Accept terms and click **"Start using AdSense"**

### Step 2: Get Your Publisher ID

After applying, you'll get a Publisher ID that looks like: `ca-pub-1234567890123456`

### Step 3: Update Your Files

Replace `ca-pub-XXXXXXXXXXXXXXXX` with your actual Publisher ID in these files:

1. **index.html** (line ~50) - AdSense script tag
2. **index.html** (line ~565) - Ad slot
3. **ads.txt** - Publisher ID line
4. **All other HTML files** - AdSense script tag

Example for ads.txt:
```
google.com, pub-1234567890123456, DIRECT, f08c47fec0942fa0
```

Example for HTML:
```html
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1234567890123456" crossorigin="anonymous"></script>
```

### Step 4: Verify Site Ownership

AdSense may require verification. The script tag in your HTML head section serves as verification. If additional verification is needed:

1. Go to AdSense → Sites → Add Site
2. Copy the verification meta tag they provide
3. Add it to the `<head>` section of `index.html`
4. Push the changes to GitHub
5. Click "Verify" in AdSense

### Step 5: Wait for Approval

- AdSense review typically takes 1-2 weeks
- Keep your site active and add more content if possible
- Ensure all legal pages (Privacy, Terms, Disclaimer) are accessible

---

## Google Search Console Setup (SEO)

### Step 1: Add Property

1. Go to https://search.google.com/search-console
2. Click **"Add Property"**
3. Choose **"URL prefix"**
4. Enter: `https://creditcardpayoffcalc.github.io/`

### Step 2: Verify Ownership

Use HTML tag verification:
1. Copy the meta tag Google provides
2. Add it to `index.html` in the `<head>` section
3. Push to GitHub
4. Click "Verify" in Search Console

### Step 3: Submit Sitemap

1. Go to Search Console → Sitemaps
2. Enter: `sitemap.xml`
3. Click **"Submit"**

---

## Quick Deployment Script

For convenience, run this script to deploy:

```bash
#!/bin/bash

# Credit Card Payoff Calculator - Quick Deploy Script

echo "🚀 Deploying Credit Card Payoff Calculator..."

cd /Users/ares/projects/credit-card-payoff-calculator

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add all changes
git add .

# Commit with timestamp
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
git push origin main

echo "✅ Deployment complete!"
echo "🌐 Visit: https://creditcardpayoffcalc.github.io/"
```

---

## Files Structure

```
credit-card-payoff-calculator/
├── index.html          # Main calculator page
├── about.html          # About page
├── contact.html        # Contact page
├── privacy.html        # Privacy policy
├── terms.html          # Terms of service
├── disclaimer.html     # Legal disclaimer
├── ads.txt             # AdSense ads.txt
├── robots.txt          # SEO robots file
├── sitemap.xml         # SEO sitemap
├── manifest.json       # PWA manifest
├── favicon.svg         # Site favicon
└── README.md           # This file
```

---

## Updating the Publisher ID

After getting your AdSense Publisher ID, use this command to update all files at once:

```bash
# Replace YOUR_PUB_ID with your actual publisher ID (e.g., pub-1234567890123456)
cd /Users/ares/projects/credit-card-payoff-calculator

# Update all HTML files and ads.txt
find . -type f \( -name "*.html" -o -name "ads.txt" \) -exec sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' {} +

# Commit and push
git add .
git commit -m "Add AdSense Publisher ID"
git push origin main
```

---

## License

MIT License - Feel free to use and modify.

---

## Contact

Email: tmobilestore944@gmail.com

