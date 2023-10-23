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

[GoReleaser (goreleaser.com)](https://goreleaser.com) is used to automate build and release processes, for a multi-os, multi-architecture Go binary.

To configure GoReleaser, begin by creating a `.goreleaser.yml` file based on the following template:

```yaml
before:
    hooks:
        - "go mod tidy"

builds:
    - id: "aquamarine"
      binary: "aquamarine"
      # Path to the main.go for the binary you want to compile.
      main: "cmd/aquamarine/main.go"
      env:
          # Build a statically-linked binary without external dependencies.
          - "CGO_ENABLED=0"
      mod_timestamp: "{{ .CommitTimestamp }}"
      flags:
          # Remove all file system paths from the resulting executable.
          - "-trimpath"
      ldflags:
          # Omit the symbol table and debug information.
          - "-s"
          # Omit the DWARF symbol table.
          - "-w"
          # Populate build information into version variables. In this example,
          # the aquamarine binary embeds the current build details, so we need
          # to provide them in the following lines.
          - "-X github.com/dbtedman/conveyance/cmd.version={{.Version}}"
          - "-X github.com/dbtedman/conveyance/cmd.commit={{.Commit}}"
          - "-X github.com/dbtedman/conveyance/cmd.date={{.CommitDate}}"
      goos:
          # Choose the operating systems you want to target.
          - "linux"
          - "darwin"
          - "windows"
      goarch:
          # Choose the architectures you want to target.
          - "amd64"
          - "arm64"
```

## GitHub Actions CI

We want to build our binary automatically on commits to our code repository, we are using [GitHub Actions (docs.github.com)](https://docs.github.com/en/actions) for this purpose.

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
                  # Go version in use will be selected based on your module definition.
                  go-version-file: "./go.mod"
            - name: "Build"
              uses: "goreleaser/goreleaser-action@5.0.0"
              with:
                  version: "latest"
                  args: "build --clean --snapshot"
```

This configuration will cause a pipeline to execute on each commit to the `main` branch, or any Pull Requests that target `main` branch.

Push the changes to your remote repository, and confirm in the GitHub UI that a pipeline has been executed.

## Homebrew Tap

A Homebrew Tap provides an alternative to publishing to the primary Homebrew repository, in a code repository you control.

Create an empty repository [github.com/dbtedman/homebrew-tap](https://github.com/dbtedman/homebrew-tap) for this purpose.

> 💡 It is important to name the repository `homebrew-tap` as this is expected by the `brew install` command so that the formula can be referenced as `dbtedman/tap/aquamarine`.

## Go Releaser Release

Now that we can build our binary in our pipeline, we need to prepare our GoReleaser configuration for publishing to Homebrew.

Modify your GoReleaser configuration `.goreleaser.yml`, according to the following:

```yaml
archives:
    - format: "binary"
      id: "aquamarine_binary"
      builds:
          - "aquamarine"
      name_template: "aquamarine_{{ .Version }}_{{ .Os }}_{{ .Arch }}"
    - format: "zip"
      id: "zip"
      name_template: "{{ .Binary }}_{{ .Version }}_{{ .Os }}_{{ .Arch }}"

checksum:
    name_template: "{{ .ProjectName }}_{{ .Version }}_SHA256SUMS"
    algorithm: "sha256"

brews:
    - name: "aquamarine"
      ids:
          - "aquamarine_binary"
      # Configuration for the homebrew tap created in the previous step.
      repository:
          owner: "dbtedman"
          name: "homebrew-tap"
          branch: "main"
          token: "{{ .Env.HOMEBREW_TAP_GITHUB_TOKEN }}"
      homepage: "https://github.com/dbtedman/stop"
      description: "Provide security by proxying requests to legacy applications."
      license: "MIT"
      folder: "Formula"
```

## GitHub Actions Release

We want to release our binary automatically on tags in our code repository, as was done for builds, we are using GitHub Actions for this purpose.

```yaml
name: "release"

on:
    push:
        tags:
            - "*"

permissions: "read-all"

jobs:
    release:
        runs-on: "ubuntu-latest"

        permissions:
            contents: "write"

        steps:
            - name: "Checkout Code"
              uses: "actions/checkout@4.1.1"
              with:
                  fetch-depth: 0
            - name: "Setup Go"
              uses: "actions/setup-go@4.1.0"
              with:
                  # Go version in use will be selected based on your module definition.
                  go-version-file: "./go.mod"
            - name: "Release"
              uses: "goreleaser/goreleaser-action@5.0.0"
              id: "release"
              with:
                  version: "latest"
                  args: "release --clean"
              env:
                  # Needed so that GoReleaser can publish release artifacts
                  # to GitHub, and create a release.
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  HOMEBREW_TAP_GITHUB_TOKEN: ${{ secrets.HOMEBREW_TAP_GITHUB_TOKEN }}
```

## GitHub Actions Repository Secret

To authenticate GoReleaser to publish to our Homebrew Tap, you will need to create a [Fine-grained Personal Access Token (docs.github.com)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token):

| Option      | Usage                                                                             |
| ----------- | --------------------------------------------------------------------------------- |
| Name        | `HOMEBREW_TAP_GITHUB_TOKEN`                                                       |
| Access on   | **Only select repositories**, and select the HomeBrew Tap `dbtedman/homebrew-tap` |
| Permissions | **Contents (Read/Write)**, and **Metadata (Read Only)**                           |

Keep a record of the token that is generated.

In the code repository for your go binary, define a [Repository Secret (docs.github.com)](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions) `HOMEBREW_TAP_GITHUB_TOKEN` with the value of the token just generated.

## Tag Release

Create a release tag, and push to the remote repository. This will automatically trigger a release pipeline.

```shell
git tag 0.1.0 && git push origin 0.1.0
```

## Test

We are now ready to test our published Homebrew Formula. Install `aquamarine` using the following command.

```shell
brew install dbtedman/tap/aquamarine
```

## Complete Solution

You can see the full solution on GitHub [github.com/dbtedman/stop](https://github.com/dbtedman/stop), along with other
go based experiments.
