---
title: "Contributing to a Google Open Source Project"
date: "2023-11-15"
author: "Daniel Tedman"
description: "A chance encounter with a failing osv-scanner job, gave me the opportunity to contribute to a Google Open Source Project, learn more about Go, and help others avoid running into the same issue in the future."
topics: ["Go", "Google", "Open Source"]
---

## OSV

Google has developed the [OSV](https://osv.dev) project which according to their website is:

> An open, precise, and distributed approach to producing and consuming vulnerability information for open source. [(source)](https://osv.dev)

I was interested in this project for its ability to automatically scan dependencies in my projects and look for known vulnerabilities.

## The Problem

I was successfully using the tool in my projects for some time until in April 2023, when I encountered an issue with the most recent version of PNPM which broke execution of the [osv-scanner](https://github.com/google/osv-scanner) command line utility that interacts with the OSV project.

## An Opportunity to Contribute

I [Raised an Issue on GitHub](https://github.com/google/osv-scanner/issues/324) to capture the issue, and I made a fork of the code repository to see if I could better understand what caused the issue.

I discovered that a type incompatibility existed when parsing the PNPM Lock file, along with a change to how package versions were recorded.

With this information, I was able to draft a proposed fix, along with additional code coverage, which I [requested to be contributed via a Pull Request](https://github.com/google/osv-scanner/pull/325).

## Positive Feedback

Soon after raising this Pull Request, I begun discussions with two reviewers; [Oliver Chang](https://github.com/oliverchang) and [Gareth Jones](https://github.com/G-Rath) who patiently walked me through the contribution process and helped review my contribution so that it met Google's standards.

I am thankful for how this was a positive experience, in which I gained additional knowledge regarding contributing to a Google Open Source Project, along with to a larger Go project that I had previously experienced.

## Release

The change was then released in [v1.3.2](https://github.com/google/osv-scanner/releases/tag/v1.3.2), and I got the satisfaction knowing that others would benefit from my contribution.

## Recommendations

I would recommend that anyone who reads this article, and has an interest in contributing to Open Source, keep an eye out for an opportunity to help improve the software that we all rely on. The web is built on Open Source, and it needs your help to keep it going into the future.
