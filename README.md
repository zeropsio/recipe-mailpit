# Zerops Mailpit

Import as a service to an existing Zerops project.

```yaml
services:
  - hostname: mailpit
    type: go@1
    minContainers: 1
    buildFromGit: https://github.com/zeropsio/recipe-mailpit
    enableSubdomainAccess: true
    ports:
      - port: 8025
      - port: 1025
        httpSupport: false
```
