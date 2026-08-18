# Cloudflare Pages Deployment dengan Wrangler CLI

Karena project ini melebihi 1000 files (termasuk node_modules), gunakan **Wrangler CLI** untuk upload hingga 20,000 files.

## Setup Wrangler CLI

### 1. Install Wrangler (global)
```bash
npm install -g @cloudflare/wrangler
```

### 2. Login ke Cloudflare
```bash
wrangler login
```
Browser akan membuka Cloudflare login. Approve akses.

### 3. Build project
```bash
npm install
npm run build
```

### 4. Deploy dengan Wrangler
```bash
wrangler pages deploy dist/
```

Atau gunakan automated deployment:
```bash
wrangler pages create
```

## Cara lain: GitHub + Cloudflare Pages (Recommended)

1. Repo sudah di-push ke: https://github.com/Budiwardani/dynfrmdemo
2. Buka https://dash.cloudflare.com/
3. Pilih **Pages** > **Create a project**
4. Pilih **Connect to Git**
5. Authorize GitHub & select repo `dynfrmdemo`
6. Build settings:
   - **Framework preset**: None
   - **Build command**: `npm install && npm run build`
   - **Build output directory**: `dist`
7. **Environment variables**:
   - Key: `VITE_API_URL`
   - Value: `https://api.dynfrm.example.com`
8. **Deploy**

## File strukturnya

Sekarang repo hanya berisi:
```
cloudflare-pages-demo/
├── .git/
├── .gitignore           ← tambahan, excludes node_modules
├── node_modules/        ← LOCAL ONLY (ignored by git)
├── dist/                ← LOCAL ONLY (ignored by git)
├── src/
│   ├── App.jsx
│   ├── main.jsx
│   └── styles.css
├── public/
│   └── favicon.svg
├── index.html
├── package.json
├── package-lock.json    ← untuk reproducible installs
├── vite.config.js
├── wrangler.toml        ← Wrangler configuration
└── README.md
```

## Notes

- `node_modules` & `dist` tidak lagi di-track oleh git
- Cloudflare Pages akan auto-run `npm install && npm run build` 
- Total files pada repo sekarang < 100, ramah untuk Pages upload
- Gunakan Wrangler CLI jika ingin local testing sebelum GitHub push

## Environment variable

Update `VITE_API_URL` sesuai backend:
```
Development: http://localhost:8000
Production:  https://api.dynfrm.example.com
```
