---
title: "Maintainable Legacy CSS With PostCSS Prefix Wrap"
date: "2023-01-24"
author: "Daniel Tedman"
description: "Maintaining legacy CSS critical to support parts of your website that can not yet be upgraded, can be made
maintainable with PostCSS Prefix Wrap, including third party libraries that you do not maintain."
---

## The Problem

You are responsible for implementing an upgrade to the theme for a website. You have already determined that a
progressive in place upgrade is not possible for the site due to the use of Bootstrap where your upgrade needs to move
between different major versions. You cannot however make the necessary markup changes on all pages of the site at once,
so you will need to include both the old theme for some pages and sections, and add the new theme progressively to new
pages over time.

You soon realise that you will need to maintain a single build of your theme including both old and new styles as
including different versions of the theme on different pages is not a viable option as you cannot always garuntee that
all components on a single page are upgraded at the same time.

## You Can Leverage CSS Class Prefixing

You determine that to be able to include both old and new styles together, but allow them to be applied to just the
right sections of the page, a css prefix class can be added to every css rule so that when a containing element has the
matching class, its child elements will get that sub-set of the theme applied. You plan to use this technique for
targeting which sections of the site need the legacy css.

## Why a Manual Solution May Not Work?

You consider using your editor to find and replace all selectors in your source code, this might work if your code was
the only code running on your site, but you then remember that your depending on Bootstrap. You are going to need an
alternative solution, that both handles your custom code, and the code contained within 3rd party libraries, such as
Bootstrap.

## How PostCSS Prefix Wrap Can Help?

The solution to your problem is called PostCSS Prefix Wrap. This is an open source plugin for PostCSS that automates the
appending of prefix selectors. You integrate PostCSS Prefix Wrap into your build process. This can be any build process
that supports [PostCSS](https://postcss.org).

## Where Can I Get PostCSS Prefix Wrap

You can install the package from NPM, [postcss-prefixwrap](https://www.npmjs.com/package/postcss-prefixwrap).

[![NPM Downloads Per Week](https://img.shields.io/npm/dw/postcss-prefixwrap?color=blue&logo=npm&style=for-the-badge)](https://www.npmjs.com/package/postcss-prefixwrap)

| Package Manager                                         | Command                                                  |
| :------------------------------------------------------ | :------------------------------------------------------- |
| [NPM](https://www.npmjs.com/package/postcss-prefixwrap) | `npm install postcss-prefixwrap --save-dev --save-exact` |
| [PNPM](https://pnpm.io)                                 | `pnpm add postcss-prefixwrap --save-dev --save-exact`    |
| [Yarn](https://yarnpkg.com/package/postcss-prefixwrap)  | `yarn add postcss-prefixwrap --dev --exact`              |

## It's Open Source, So How Do I Contribute?

Development of the package occurs on GitHub
at [dbtedman/postcss-prefixwrap](https://github.com/dbtedman/postcss-prefixwrap), and contribution is welcomed.
