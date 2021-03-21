---
date: 2019-01-01T00:00:00+10:00
description: "A PostCSS plugin that is used to lint css for existence of classes that might trigger add blockers."
tags: [Git, GitHub, GitHub Actions, Node, NPM, Open Source, PostCSS, TypeScript]
title: "PostCSS Add Block Lint"
---

A PostCSS plugin that is used to lint css for existence of classes that might trigger add blockers.

**2019 - 2020**

[github.com/dbtedman/postcss-add-block-lint](https://github.com/dbtedman/postcss-add-block-lint)

## Community Need

When developing websites, understanding how plugins used by your customers will impact their experience of your website is a perennial challenge. One class of plugin that can cause unexpected behavior are add blockers. These plugins will impact content that are not adds just as they do for adds. An automated too for detecting possible issues during development assists in reducing the negative impact these plugins pose.

## Our Solution

Leveraging the parsing capabilities of PostCSS, our solution searches for matching exclusion rules in the popular add block lists against your styles. Any potential matches are reported to the console. This functionality is then published as a NPM package.

## My Contribution

As the primary developer for the tool, I have participated in all aspects of its development.
