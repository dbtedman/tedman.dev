---
title: "Go Homebrew Package"
date: "2023-10-18"
author: "Daniel Tedman"
description: "Go is an excellent language for writing command line tools, and Homebrew is the de facto package manager for macOS. This guide provides step by step instructions on how to get from go source code to published homebrew package."
topics: ["Go", "Guide", "Homebrew", "Go Releaser", "GitHub Actions"]
---

## Goal

To allow for installing our go binary `aquamarine` on macOS using Homebrew.

## Assumptions

-   A go project exists with a functional binary.
-   GitHub Actions will be used for automating the release.
-   Go Releaser will be used to coordinate the go build.
-   A Homebrew Tap will be used, instead of publishing via the [homebrew-core](https://github.com/Homebrew/homebrew-core)
    repository.

## Go Releaser Build

Placeholder

## GitHub Actions CI

> ⚠️ Add details on why we need to do this.

In your code repository, create a GitHub Actions workflow configuration `.github/workflows/ci.yml`, based on the following template:

```yaml
name: "ci"

on:
    pull_request:
        branches:
            - "main"
    push:
        branches:
            - "main"

permissions: "read-all"

jobs:
    linux:
        runs-on: "ubuntu-latest"

        steps:
            - name: "Checkout Code"
              uses: "actions/checkout@4.1.1"
            - name: "Setup Go"
              uses: "actions/setup-go@4.1.0"
              with:
                  go-version-file: "./go.mod"
            - name: "Build"
              uses: "goreleaser/goreleaser-action@5.0.0"
              with:
                  version: "latest"
                  args: "build --clean --snapshot"
```

This configuration will cause a pipeline to execute on each commit to the `main` branch, or any Pull Requests that target `main` branch.

Push the changes to your remote repository, and confirm in the GitHub UI that a pipeline has been executed.

## Go Releaser Release

Placeholder

## Homebrew Tap

Placeholder

## GitHub Actions Release

Placeholder

## Tag Release

Placeholder

## Test

```shell
brew install dbtedman/tap/aquamarine
```

## Complete Solution

You can see the full solution on GitHub [github.com/dbtedman/stop](https://github.com/dbtedman/stop), along with other
go based experiments.
