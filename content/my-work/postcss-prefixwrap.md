---
date: 2016-01-01T00:00:00+10:00
description: "A PostCSS plugin that is used to wrap css styles with a css selector to constrain their affect on parent elements in a page."
tags:
    [
        CSS,
        GitHub,
        GitHub Actions,
        Jest,
        Node,
        Open Source,
        PostCSS,
        TypeScript,
        Yarn,
    ]
title: "PostCSS Prefix Wrap (Open Source)"
type: page
---

```shell
yarn add --dev --exact postcss-prefixwrap
```

A PostCSS plugin that is used to wrap css styles with a css selector to constrain their affect on parent elements in a page.

**2016 - Now**

[github.com/dbtedman/postcss-prefixwrap](https://github.com/dbtedman/postcss-prefixwrap)

## Community Need

Whenever an interactive application needs to be developed that will live within another system, for example a learning management system, a developer will inevitably encounter the issue of CSS selector conflicts between their code and the system their application lives within.

## Our Solution

A PostCSS plugin that prefixes each CSS selector of your application with a custom class that increases the priority of your selectors so they are chosen first over the parent applications selectors when you wrap your application in an element with this custom selector.

## My Contribution

As the primary developer for this plugin, I have been responsible for all aspects of its development accept for the kind contributions I have received from the wider open source community.
