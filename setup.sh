#!/bin/bash
# Quick clone and setup script for DynFRM Demo

set -e

echo "=================================================="
echo "DynFRM Demo - Clone & Setup"
echo "=================================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Step 1: Clone repository
echo -e "${BLUE}[1/4]${NC} Cloning repository..."
git clone https://github.com/Budiwardani/dynfrmdemo.git
cd dynfrmdemo
echo -e "${GREEN}✓${NC} Repository cloned"
echo ""

# Step 2: Install dependencies
echo -e "${BLUE}[2/4]${NC} Installing dependencies..."
npm install
echo -e "${GREEN}✓${NC} Dependencies installed"
echo ""

# Step 3: Create local env file
echo -e "${BLUE}[3/4]${NC} Creating .env.local..."
cat > .env.local << EOF
VITE_API_URL=http://localhost:8000
EOF
echo -e "${GREEN}✓${NC} .env.local created"
echo ""

# Step 4: Summary
echo -e "${BLUE}[4/4]${NC} Setup complete!"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo ""
echo "  Development server:"
echo -e "    ${GREEN}npm run dev${NC}"
echo ""
echo "  Build for production:"
echo -e "    ${GREEN}npm run build${NC}"
echo ""
echo "  Preview production build:"
echo -e "    ${GREEN}npm run preview${NC}"
echo ""
echo -e "${YELLOW}Deploy to Cloudflare Pages:${NC}"
echo ""
echo "  Option 1 - Via Dashboard (Recommended):"
echo "    1. Go to https://dash.cloudflare.com/"
echo "    2. Pages > Create project > Connect to Git"
echo "    3. Select: Budiwardani/dynfrmdemo"
echo "    4. Build command: npm install && npm run build"
echo "    5. Output directory: dist"
echo ""
echo "  Option 2 - Via Wrangler CLI:"
echo -e "    ${GREEN}npm install -g @cloudflare/wrangler${NC}"
echo -e "    ${GREEN}wrangler login${NC}"
echo -e "    ${GREEN}npm run build${NC}"
echo -e "    ${GREEN}wrangler pages deploy dist/${NC}"
echo ""
echo -e "${GREEN}Happy coding!${NC}"
