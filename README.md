# Zerops Mailpit

Import as a service to an existing Zerops project.

```yaml
services:
  - hostname: mailpit
    type: alpine@latest
    buildFromGit: https://github.com/zeropsio/recipe-mailpit
    enableSubdomainAccess: true
```
