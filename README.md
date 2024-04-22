# Zerops Mailpit

```yaml
services:
  - hostname: mailpit
    type: go@1
    minContainers: 1
    buildFromGit: https://github.com/zeropsio/recipe-mailpit
    enableZeropsSubdomain: true
    ports:
      - port: 8025
      - port: 1025
        httpSupport: false
```
