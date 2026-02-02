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
3. Ten ask the user for the following values, which the user can find in the Keycloak service section of the NOUMENA Cloud app:
   - KEYCLOAK_ADMIN_USER
   - KEYCLOAK_ADMIN_PASSWORD
4. Store those values as Replit Secrets 
5. Then run `make setup`. Do not run any commands before this is done. Do not start the frontend server before this is done.
