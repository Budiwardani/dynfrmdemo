# Deployment Notes

## 1. Frontend demo

Folder ini adalah frontend demo untuk Cloudflare Pages.

Gunakan build command:

```bash
npm install
npm run build
```

Output folder yang dipakai di Cloudflare Pages:

```text
dist/
```

## 2. API backend

Backend Laravel tetap berjalan di VPS, bukan di Cloudflare Pages.

Contoh URL backend:

```text
https://api.dynfrm.example.com
```

## 3. Environment variable

Tambahkan variabel di Cloudflare Pages:

```bash
VITE_API_URL=https://api.dynfrm.example.com
```

## 4. Demo label

Project ini diberi label DEMO PROGRAM agar jelas ini adalah versi preview/presentasi, bukan production utama.

## 5. Catatan keamanan

- Jangan menaruh secret, token, atau database credentials di frontend demo.
- Semua data sensitif harus berada di backend Laravel yang berjalan di VPS.
- API harus mengawasi autentikasi dan izin secara server-side.
