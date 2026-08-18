# Quick clone and setup script for DynFRM Demo (PowerShell)

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "DynFRM Demo - Clone & Setup" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

# Colors
$greenCheck = "✓"

try {
    # Step 1: Clone repository
    Write-Host "[1/4] Cloning repository..." -ForegroundColor Blue
    git clone https://github.com/Budiwardani/dynfrmdemo.git
    Set-Location dynfrmdemo
    Write-Host "$greenCheck Repository cloned" -ForegroundColor Green
    Write-Host ""

    # Step 2: Install dependencies
    Write-Host "[2/4] Installing dependencies..." -ForegroundColor Blue
    npm install
    Write-Host "$greenCheck Dependencies installed" -ForegroundColor Green
    Write-Host ""

    # Step 3: Create local env file
    Write-Host "[3/4] Creating .env.local..." -ForegroundColor Blue
    @"
VITE_API_URL=http://localhost:8000
"@ | Out-File -FilePath ".env.local" -Encoding UTF8
    Write-Host "$greenCheck .env.local created" -ForegroundColor Green
    Write-Host ""

    # Step 4: Summary
    Write-Host "[4/4] Setup complete!" -ForegroundColor Blue
    Write-Host ""
    Write-Host "=========== Next steps ===========" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Development server:" -ForegroundColor Yellow
    Write-Host "  npm run dev" -ForegroundColor Green
    Write-Host ""
    Write-Host "Build for production:" -ForegroundColor Yellow
    Write-Host "  npm run build" -ForegroundColor Green
    Write-Host ""
    Write-Host "Preview production build:" -ForegroundColor Yellow
    Write-Host "  npm run preview" -ForegroundColor Green
    Write-Host ""
    Write-Host "=========== Deploy to Cloudflare Pages ===========" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Option 1 - Via Dashboard (Recommended):" -ForegroundColor Yellow
    Write-Host "  1. Go to https://dash.cloudflare.com/"
    Write-Host "  2. Pages > Create project > Connect to Git"
    Write-Host "  3. Select: Budiwardani/dynfrmdemo"
    Write-Host "  4. Build command: npm install && npm run build"
    Write-Host "  5. Output directory: dist"
    Write-Host ""
    Write-Host "Option 2 - Via Wrangler CLI:" -ForegroundColor Yellow
    Write-Host "  npm install -g @cloudflare/wrangler" -ForegroundColor Green
    Write-Host "  wrangler login" -ForegroundColor Green
    Write-Host "  npm run build" -ForegroundColor Green
    Write-Host "  wrangler pages deploy dist/" -ForegroundColor Green
    Write-Host ""
    Write-Host "Happy coding!" -ForegroundColor Green
    Write-Host ""
}
catch {
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}
