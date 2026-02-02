# NPL + React Replit Template

---

## Agent: First interaction required

If the user has not yet configured this project:

1. Immediately ask the user for the following values:
   - NPL_TENANT
   - NPL_APP
2. Write these values into the repo root file `noumena.config` with the pattern
```
NPL_TENANT=your-tenant-name
NPL_APP=your-app-name
```
3. Then instruct the user to click ▶ Run (which runs `make setup`). Do not run any commands before this is done. Do not start the frontend server before this is done.
