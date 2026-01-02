# Deployment Checklist

## Quick Start Commands

Copy and paste these commands in order:

### 1. Create GitHub Organization
Open in browser: https://github.com/organizations/plan
- Organization name: `creditcardpayoffcalc`
- Contact email: `tmobilestore944@gmail.com`
- Skip team members

### 2. Create Repository
Open in browser: https://github.com/creditcardpayoffcalc
- Click "New repository"
- Name: `creditcardpayoffcalc.github.io`
- Set to **Public**
- Create repository (don't add README)

### 3. Deploy Code
```bash
cd /Users/ares/projects/credit-card-payoff-calculator
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/creditcardpayoffcalc/creditcardpayoffcalc.github.io.git
git push -u origin main
```

### 4. Enable GitHub Pages
Open: https://github.com/creditcardpayoffcalc/creditcardpayoffcalc.github.io/settings/pages
- Source: Deploy from a branch
- Branch: main
- Folder: / (root)
- Save

### 5. Verify Site is Live
Wait 2 minutes, then open: https://creditcardpayoffcalc.github.io/

---

## Google AdSense Setup

### 1. Apply for AdSense
Open: https://www.google.com/adsense/start/
- Website: `https://creditcardpayoffcalc.github.io`
- Email: `tmobilestore944@gmail.com`

### 2. After Approval - Update Publisher ID
Replace `pub-XXXXXXXXXXXXXXXX` with your actual ID:

```bash
cd /Users/ares/projects/credit-card-payoff-calculator

# Replace in all files (change YOUR_PUB_ID to your actual ID)
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' index.html
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' about.html
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' contact.html
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' privacy.html
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' terms.html
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' disclaimer.html
sed -i '' 's/pub-XXXXXXXXXXXXXXXX/pub-YOUR_PUB_ID/g' ads.txt

# Deploy update
git add .
git commit -m "Add AdSense Publisher ID"
git push
```

---

## Google Search Console (SEO)

### 1. Add Property
Open: https://search.google.com/search-console/
- Add property → URL prefix
- URL: `https://creditcardpayoffcalc.github.io/`

### 2. Verify with HTML Tag
Copy the meta tag, add to `index.html` `<head>`, push changes.

### 3. Submit Sitemap
In Search Console → Sitemaps → Add: `sitemap.xml`

---

## Checklist

- [ ] Created GitHub organization `creditcardpayoffcalc`
- [ ] Created repository `creditcardpayoffcalc.github.io`
- [ ] Pushed code to repository
- [ ] Enabled GitHub Pages
- [ ] Site is live at https://creditcardpayoffcalc.github.io/
- [ ] Applied for Google AdSense
- [ ] Updated Publisher ID in all files (after approval)
- [ ] Added to Google Search Console
- [ ] Submitted sitemap

---

## Important URLs

| Resource | URL |
|----------|-----|
| Live Site | https://creditcardpayoffcalc.github.io/ |
| GitHub Org | https://github.com/creditcardpayoffcalc |
| Repository | https://github.com/creditcardpayoffcalc/creditcardpayoffcalc.github.io |
| GitHub Pages Settings | https://github.com/creditcardpayoffcalc/creditcardpayoffcalc.github.io/settings/pages |
| AdSense | https://www.google.com/adsense/ |
| Search Console | https://search.google.com/search-console/ |

---

## Contact Info (for AdSense/forms)

- Email: `tmobilestore944@gmail.com`

