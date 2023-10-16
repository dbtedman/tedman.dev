---
title: "Embedding Content Within an Existing Site With PostCSS Prefix Wrap"
date: "2023-01-26"
author: "Daniel Tedman"
description: "Embedding content within an existing site that you do not control, can be made possible with PostCSS Prefix Wrap, including third party libraries that you do not maintain."
---

## The Problem

You may be asked to develop a piece of interactivity that needs to live within a content management system that you do not control. You may find that your styles are impacted by the CSS already on the site, or that your newly included CSS now impacts the rest of the page it is embedded in.

## How PostCSS Prefix Wrap Can Help?

PostCSS Prefix Wrap solves this problem by prefixing your CSS selectors so that they only apply to HTML contained within a parent containing element. Your styles will now take precedence over those of the parent page.

On the flip side, your styles won't negatively impact the site your content is hosted on as its scoped to that parent container.

This is in fact the origin story for this plugin, for developing interactive content to live within the Blackboard LMS.

## Why a Manual Solution May Not Work?

You might wonder why its necessary to use this plugin when you could just prefix your styles yourself. Yes, this is correct, but does not apply to any 3rd party code you include such as a CSS framework like Bootstrap.

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
