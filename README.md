# [Portfolio](https://github.com/dbtedman/portfolio)

[![CI GitHub Pipeline](https://img.shields.io/github/actions/workflow/status/dbtedman/portfolio/ci.yml?branch=main&style=for-the-badge&logo=github&label=ci)](https://github.com/dbtedman/portfolio/actions/workflows/ci.yml)
[![Deploy GitHub Pipeline](https://img.shields.io/github/actions/workflow/status/dbtedman/portfolio/deploy.yml?branch=main&style=for-the-badge&logo=github&label=deploy)](https://github.com/dbtedman/portfolio/actions/workflows/deploy.yml)

Hugo source code for [https://danieltedman.com/](https://danieltedman.com/).

-   [Getting Started](#getting-started)
-   [Verification](#verification)
-   [Design](#design)
-   [Security](#security)
-   [References](#references)
-   [License](#license)

## Getting Started

```shell
nvm use && make install serve
```

## Verification

### Linting

```shell
make lint
```

These rules can then be automatically applied:

```shell
make format
```

## Design

### Repository Structure

| Directory  | Purpose                                          |
| ---------- | ------------------------------------------------ |
| `.github/` | Dependabot configuration and pipeline workflows. |
| `.husky/`  | Husky git hook configuration.                    |

### Stack

-   [✅ Dependabot (docs.github.com)](https://docs.github.com/en/code-security/dependabot)
-   [✅ GitHub Actions (github.com)](https://github.com/features/actions)
-   [✅ Husky (typicode.github.io)](https://typicode.github.io/husky/#/)
-   [✅ Node Version Manager (github.com)](https://github.com/nvm-sh/nvm)
-   [✅ NodeJS (nodejs.org)](https://nodejs.org/en/)
-   [✅ PNPM (pnpm.io)](https://pnpm.io/)
-   [✅ Prettier (prettier.io)](https://prettier.io/)

## Security

Read our [Security Guide](SECURITY.md) to learn how security is considered during the development and operation of this
plugin.

## References

> 💡 Resources referenced during the development of this project.

## License

See [LICENSE.md](./LICENSE.md) for details.
