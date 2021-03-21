---
date: 2016-05-02T00:00:00+10:00
description: "Provides a repeatable  local development environment that matches an app server  infrastructure, associated databases, and services."
tags:
    [
        CentOS,
        EditorConfig,
        GitHub,
        Markdown,
        Open Source,
        Prettier,
        Puppet,
        RSpec,
        Rubocop,
        Ruby,
        RubyGems,
        ServerSpec,
        Vagrant,
    ]
title: "App Local (Open Source)"
---

Provides a repeatable local development environment that matches an app server infrastructure, associated databases, and services.

**2016 - 2018**

[github.com/dbtedman/app-local](https://github.com/dbtedman/app-local)

## Community Need

Our team at Griffith University needed a solution for developing locally that would match out test and production environments as closely as possible. No off the shelf solution would provide this for us.

## Our Solution

A Vagrant + Puppet + Virtual Box combination was chosen to implement a local development environment that matched the testing and production environments the applications being developed in this environment would be using. Custom fake authentication was added to allow login to applications under development using the same application code.

## My Contribution

Development and maintenance of the plugin was my responsibility while working at Griffith University. I contributed to all aspects of the development.
