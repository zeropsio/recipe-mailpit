# Zerops Mailpit

Import as a service to an existing Zerops project.

```yaml
services:
  - hostname: mailpit
    type: go@1
    buildFromGit: https://github.com/zeropsio/recipe-mailpit
    enableSubdomainAccess: true
```
