# NPL + React Replit Template

## 🛑 STOP - READ THIS FIRST

**DO NOT run npm commands directly. DO NOT start the dev server yet.**

This project requires setup before it can run. The setup process:
1. Configures connection to Noumena Cloud
2. Opens a browser for authentication (user must log in)
3. Deploys the backend
4. Generates TypeScript types

---

## First-run instructions for Agent

Before running any Make targets:

1. Ask the user for:
   - NPL_TENANT
   - NPL_APP
2. Write these values into the repo root file `noumena.config` with the pattern
```
NPL_TENANT=your-tenant-name
NPL_APP=your-app-name
```
3. Then instruct the user to click ▶ Run (which runs `make setup`)
