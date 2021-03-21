# [Portfolio](./README.md) // Contributing

-   [Local Development](#local-development)
-   [Templates](#templates)
-   [Linting](#linting)
-   [Formatting](#formatting)
-   [CI](#ci)

## Local Development

```shell
hugo server
```

## Templates

### My Work

```markdown
---
title: "APP"
description: "Content to come."
date: 2019-01-01T00:00:00+10:00
---

![Screenshot](/images/my-work/???.png)

Content to come.

**X - NOW**

[ ](https://)

## Business Need

## Our Solution

## My Contribution

### Key Technologies and Services
```

## Linting

```shell
./bin/lint
```

## Formatting

```shell
./bin/format
```

## CI

[![ci results](https://github.com/dbtedman/portfolio/workflows/ci/badge.svg)](https://github.com/dbtedman/portfolio/actions?workflow=ci-master)

GitHub Pipeline, based on configuration `.github/workflows/ci.yml`.
