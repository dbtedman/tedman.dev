---
title: "Zero Downtime WordPress to Vue SPA & Spring BFF Migration"
date: "2023-02-05"
toc: true
description: "How to achieve zero downtime while migrating a WordPress website to a Vue SPA and Spring BFF in Kubernetes?"
---

## The Problem

## Initial Architecture

(placeholder)

## Target Architecture

(placeholder)

## Phase 1: Vue Components

We begin by adding Vue support to WordPress, replacing a widget dashboard with a root Vue container inside a WordPress template. Data is provided to the widgets via WP-JSON APIs defined in WordPress.

## Phase 2: Token Authentication

To prepare for replacing WordPress, we need to adjust how our authentication architecture works. We can no longer rely on WordPress session, instead, we need to authenticate with Tokens granted by OIDC. This required development of custom token authentication that established a WordPress session, but did not require a traditional WordPress login.

(php code sample)

## Phase 3: Spring BFF

WordPress is moved from the root path `/`, into a sub-path `/wp`. The root path `/` is now configured in Kubernetes to send traffic to a new Spring Boot application, our BFF. A single route `/` is defined that returns the `index.html` associated with Vue, along with a path to handle any static assets imported from this `index.html`.

(kube code sample)

## Phase 4: Replace WordPress WP-JSON APIs

Functionality defined within WordPress in WP-JSON APIs, are one by one redefined in our Spring BFF, then our Vue SPA is configured to talk to the new API path in the BFF.

## Phase 5: Remove WordPress

Now that all dependence on WordPress has been removed, we can safely remove WordPress from the deployment, codebase, and database.

## Conclusion

(placeholder)
