# [Tedman.dev](https://github.com/dbtedman/tedman.dev)

[![CI GitHub Pipeline](https://img.shields.io/github/actions/workflow/status/dbtedman/tedman.dev/ci.yml?branch=main&style=for-the-badge&logo=github&label=ci)](https://github.com/dbtedman/tedman.dev/actions/workflows/ci.yml)
[![Deploy GitHub Pipeline](https://img.shields.io/github/actions/workflow/status/dbtedman/tedman.dev/deploy.yml?branch=main&style=for-the-badge&logo=github&label=deploy)](https://github.com/dbtedman/tedman.dev/actions/workflows/deploy.yml)

Hugo source code for [https://tedman.dev](https://tedman.dev).

-   [Getting Started](#getting-started)
-   [Verification](#verification)
-   [Design](#design)
-   [Security](#security)
-   [References](#references)
-   [License](#license)

## Getting Started

```shell
make install serve
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

### Stack

-   [Cloudflare (cloudflare.com)](https://www.cloudflare.com/)
-   [Dependabot (docs.github.com)](https://docs.github.com/en/code-security/dependabot)
-   [GitHub Actions (github.com)](https://github.com/features/actions)
-   [Hover (hover.com)](https://www.hover.com/)
-   [Husky (typicode.github.io)](https://typicode.github.io/husky/#/)
-   [Node Version Manager (github.com)](https://github.com/nvm-sh/nvm)
-   [NodeJS (nodejs.org)](https://nodejs.org/en/)
-   [PNPM (pnpm.io)](https://pnpm.io/)
-   [Prettier (prettier.io)](https://prettier.io/)
-   [Redirect Pizza (redirect.pizza)](https://redirect.pizza/)
-   [Umami Analytics (umami.is)](https://umami.is)

## Security

### Security Headers

An [A+ Security Report Summary (securityheaders.com)](https://securityheaders.com/?q=https%3A%2F%2Ftedman.dev&followRedirects=on) is targeted.

### DNSSEC

`tedman.dev` has [DNSSEC enabled (dnssec-analyzer.verisignlabs.com)](https://dnssec-analyzer.verisignlabs.com/tedman.dev).

## References

> 💡 Resources referenced during the development of this project.

-   [digitalgov.gov (github.com)](https://github.com/GSA/digitalgov.gov/tree/main)
-   [Feed Validation Service (validator.w3.org)](https://validator.w3.org/feed/check.cgi)
-   [Google Search Console (search.google.com)](https://search.google.com/search-console)
-   [HTML Validation Service (validator.w3.org)](https://validator.w3.org)
-   [HTML5 Boilerplate (html5boilerplate.com)](https://html5boilerplate.com)
-   [Hugo Documentation (gohugo.io)](https://gohugo.io/documentation/)
-   [Internet.nl: Website test (en.internet.nl)](https://en.internet.nl/test-site/)
-   [Security Headers (securityheaders.com)](https://securityheaders.com)
-   [security.txt (securitytxt.org)](https://securitytxt.org)

## License

See [LICENSE.md](./LICENSE.md) for details.
