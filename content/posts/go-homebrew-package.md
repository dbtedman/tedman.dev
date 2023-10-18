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

Placeholder

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
