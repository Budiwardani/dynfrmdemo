@echo off
REM Quick clone and setup script for DynFRM Demo (Windows)

setlocal enabledelayedexpansion

echo.
echo ==================================================
echo DynFRM Demo - Clone ^& Setup
echo ==================================================
echo.

REM Step 1: Clone repository
echo [1/4] Cloning repository...
git clone https://github.com/Budiwardani/dynfrmdemo.git
cd dynfrmdemo
echo [OK] Repository cloned
echo.

REM Step 2: Install dependencies
echo [2/4] Installing dependencies...
call npm install
echo [OK] Dependencies installed
echo.

REM Step 3: Create local env file
echo [3/4] Creating .env.local...
(
echo VITE_API_URL=http://localhost:8000
) > .env.local
echo [OK] .env.local created
echo.

REM Step 4: Summary
echo [4/4] Setup complete!
echo.
echo ============ Next steps ============
echo.
echo Development server:
echo   npm run dev
echo.
echo Build for production:
echo   npm run build
echo.
echo Preview production build:
echo   npm run preview
echo.
echo ============ Deploy to Cloudflare Pages ============
echo.
echo Option 1 - Via Dashboard (Recommended):
echo   1. Go to https://dash.cloudflare.com/
echo   2. Pages ^> Create project ^> Connect to Git
echo   3. Select: Budiwardani/dynfrmdemo
echo   4. Build command: npm install ^&& npm run build
echo   5. Output directory: dist
echo.
echo Option 2 - Via Wrangler CLI:
echo   npm install -g @cloudflare/wrangler
echo   wrangler login
echo   npm run build
echo   wrangler pages deploy dist/
echo.
echo Happy coding!
echo.
pause
