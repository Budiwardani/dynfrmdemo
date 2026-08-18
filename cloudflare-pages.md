# Cloudflare Pages Deployment Guide

## 1. Project setup

Gunakan project ini sebagai frontend demo untuk Cloudflare Pages.

Build settings:

- Build command: `npm install && npm run build`
- Output directory: `dist`
- Node version: `18` atau `20`

## 2. Environment variables

Tambahkan environment variable berikut di Cloudflare Pages:

```bash
VITE_API_URL=https://api.dynfrm.example.com
```

## 3. Domain setup

Saran domain:

- Frontend: `https://dynfrm.example.com`
- API Laravel: `https://api.dynfrm.example.com`

## 4. Deployment flow

1. Push repo ke GitHub
2. Import project ke Cloudflare Pages
3. Pilih branch `main`
4. Set build command dan output directory
5. Tambahkan environment variable `VITE_API_URL`
6. Deploy

## 5. Catatan penting

- Backend Laravel harus tetap berjalan di VPS/Nginx
- Jangan menaruh token, secret, atau database credential di frontend demo
- API menjadi sumber data utama untuk autentikasi dan transaksi

## 6. Production note

Folder ini adalah demo preview, bukan produksi utama. Untuk deployment produksi final, backend dan frontend sebaiknya dipisahkan lebih jelas sesuai arsitektur split deployment DynFRM.
