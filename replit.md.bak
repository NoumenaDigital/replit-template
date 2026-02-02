# NPL + React Replit Template

---

## 🤖 Agent: First Interaction Required

If the user has not yet configured this project, follow these steps in order:

### Step 1: Collect Configuration Values

Immediately ask the user for the following values using an input form:
- **NPL_TENANT**: The tenant slug from Noumena Cloud
- **NPL_APP**: The application slug from Noumena Cloud

### Step 2: Create Configuration File

Write these values into the repository root file `noumena.config` using this pattern:

```bash
NPL_TENANT=your-tenant-name
NPL_APP=your-app-name
```

### Step 3: Collect Keycloak Credentials

Using a Secrets input form, ask the user for the following values (which can be found in the **Keycloak service section** of the Noumena Cloud app):

⚠️ **Important**: Pay attention to the order, to avoid confusion:
1. **KEYCLOAK_ADMIN_USER**
2. **KEYCLOAK_ADMIN_PASSWORD**

### Step 4: Store Secrets

Store the Keycloak credentials as **Replit Secrets**.

### Step 5: Run Setup

Execute the setup command:

```bash
make setup
```

⚠️ **Critical**: 
- Do **NOT** run any commands before the above steps are completed
- Do **NOT** start the frontend server before setup is finished

---
