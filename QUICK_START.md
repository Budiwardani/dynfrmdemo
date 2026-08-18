# 🚀 DynFRM Demo - Ready to Clone

Repository siap untuk di-clone dan di-setup langsung dari GitHub!

## Quick Clone

```bash
git clone https://github.com/Budiwardani/dynfrmdemo.git
cd dynfrmdemo
npm install
npm run dev
```

Akses di: **http://localhost:5173**

---

## Setup Scripts (Automated)

### Linux / macOS
```bash
chmod +x setup.sh
./setup.sh
```

### Windows (PowerShell)
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\setup.ps1
```

### Windows (Command Prompt)
```cmd
setup.bat
```

---

## Available Commands

| Command | Description |
|---------|-------------|
| `npm run dev` | Start development server (port 5173) |
| `npm run build` | Build for production |
| `npm run preview` | Preview production build locally |

---

## Deploy to Cloudflare Pages

### Method 1: GitHub Integration (Recommended) ⭐

**Automatic deployment on every git push:**

1. Go to https://dash.cloudflare.com/
2. **Pages** → **Create a project** → **Connect to Git**
3. Select repository: `Budiwardani/dynfrmdemo`
4. Build settings:
   - Build command: `npm install && npm run build`
   - Build output directory: `dist`
5. Environment variables:
   - `VITE_API_URL` = `https://api.dynfrm.example.com`
6. Click **Save and Deploy**

### Method 2: Wrangler CLI

```bash
# Install Wrangler globally
npm install -g @cloudflare/wrangler

# Login to Cloudflare
wrangler login

# Build and deploy
npm run build
wrangler pages deploy dist/
```

---

## File Structure

```
dynfrmdemo/
├── .gitignore              # Excludes node_modules, dist, .env
├── CLONE_AND_SETUP.md      # Detailed setup guide
├── WRANGLER_SETUP.md       # Wrangler CLI guide
├── setup.sh                # Auto-setup for Linux/macOS
├── setup.bat               # Auto-setup for Windows (cmd)
├── setup.ps1               # Auto-setup for Windows (PowerShell)
├── package.json
├── vite.config.js
├── wrangler.toml
├── index.html
├── src/
│   ├── App.jsx
│   ├── main.jsx
│   └── styles.css
└── public/
    ├── _redirects
    └── favicon.svg
```

---

## Environment Variables

Create `.env.local` for development:

```
VITE_API_URL=http://localhost:8000
```

Or via Cloudflare Pages dashboard for production.

---

## Troubleshooting

### Dependencies not installing?
```bash
rm -rf node_modules package-lock.json
npm install
```

### Port 5173 already in use?
```bash
npm run dev -- --port 3000
```

### Build failing?
```bash
npm run build
# Check dist/ folder for output
```

---

## Repository Info

- **GitHub**: https://github.com/Budiwardani/dynfrmdemo
- **Clone URL**: `https://github.com/Budiwardani/dynfrmdemo.git`
- **Branch**: `main`
- **Total files**: ~20 (lightweight, no node_modules in git)

---

## Tech Stack

- **React 18** - UI Framework
- **Vite 6** - Build tool
- **CSS** - Styling
- **Cloudflare Pages** - Hosting
- **Wrangler** - Deployment CLI

---

## Getting Help

1. Check [CLONE_AND_SETUP.md](./CLONE_AND_SETUP.md) for detailed steps
2. Check [WRANGLER_SETUP.md](./WRANGLER_SETUP.md) for CLI deployment
3. Visit [Vite Docs](https://vitejs.dev/)
4. Visit [Cloudflare Pages Docs](https://developers.cloudflare.com/pages/)

---

**Ready to deploy? Start with:**
```bash
git clone https://github.com/Budiwardani/dynfrmdemo.git
cd dynfrmdemo
npm install
npm run dev
```
