# DynFRM Demo - Clone & Setup Guide

Panduan lengkap untuk clone dan setup project langsung dari GitHub.

## Quick Start

### 1. Clone Repository
```bash
git clone https://github.com/Budiwardani/dynfrmdemo.git
cd dynfrmdemo
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Development Server
```bash
npm run dev
```
Akses di `http://localhost:5173`

### 4. Build untuk Production
```bash
npm run build
```
Output ada di folder `dist/`

---

## Cloudflare Pages Deployment

### Setup via Wrangler CLI

#### Install Wrangler
```bash
npm install -g @cloudflare/wrangler
```

#### Login ke Cloudflare
```bash
wrangler login
```

#### Deploy
```bash
npm run build
wrangler pages deploy dist/
```

---

### Setup via Cloudflare Dashboard (Recommended)

1. **Buka Cloudflare Dashboard**
   - URL: https://dash.cloudflare.com/

2. **Navigate to Pages**
   - Sidebar > Pages

3. **Create Project**
   - Click "Create a project" > "Connect to Git"

4. **Authorize GitHub**
   - Select account: `Budiwardani`
   - Repository: `dynfrmdemo`

5. **Configure Build**
   - Framework: `None`
   - Build command: `npm install && npm run build`
   - Build output directory: `dist`

6. **Environment Variables**
   - Add variable:
     - Name: `VITE_API_URL`
     - Value: `https://api.dynfrm.example.com`
   - (Ubah sesuai backend URL Anda)

7. **Deploy**
   - Click "Save and Deploy"
   - Tunggu build selesai (~2-5 menit)

---

## Folder Structure

```
dynfrmdemo/
├── src/
│   ├── App.jsx           # Main React component
│   ├── main.jsx          # Entry point
│   └── styles.css        # Global styles
├── public/
│   ├── _redirects        # SPA routing config
│   └── favicon.svg
├── index.html            # HTML template
├── package.json          # Dependencies
├── vite.config.js        # Vite config
├── wrangler.toml         # Wrangler config
└── .gitignore            # Git ignore rules
```

---

## Environment Variables

### Development (.env.local)
```
VITE_API_URL=http://localhost:8000
```

### Production (Cloudflare)
```
VITE_API_URL=https://api.dynfrm.example.com
```

---

## Available Scripts

| Command | Purpose |
|---------|---------|
| `npm run dev` | Start dev server (http://localhost:5173) |
| `npm run build` | Build for production (output: `dist/`) |
| `npm run preview` | Preview production build locally |

---

## Tech Stack

- **Frontend**: React 18
- **Build Tool**: Vite 6
- **Styling**: CSS
- **Deployment**: Cloudflare Pages
- **Package Manager**: npm

---

## Common Issues

### Issue: "Cannot find module 'react'"
```bash
npm install
```

### Issue: Build fails
```bash
# Clear cache and rebuild
rm -rf node_modules dist
npm install
npm run build
```

### Issue: VITE_API_URL not defined
Pastikan environment variable sudah di-set di Cloudflare Pages dashboard.

---

## Monitoring Deployment

1. Buka Cloudflare Dashboard > Pages > dynfrm-demo
2. Lihat tab "Deployments"
3. Lihat build logs jika ada error

---

## Support & Documentation

- **Vite Docs**: https://vitejs.dev/
- **Cloudflare Pages**: https://developers.cloudflare.com/pages/
- **Wrangler CLI**: https://developers.cloudflare.com/workers/wrangler/

---

## Repository

- **GitHub**: https://github.com/Budiwardani/dynfrmdemo
- **Clone URL**: `https://github.com/Budiwardani/dynfrmdemo.git`
