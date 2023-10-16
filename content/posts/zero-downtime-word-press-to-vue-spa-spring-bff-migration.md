---
title: "Zero Downtime WordPress to Vue SPA & Spring BFF Migration"
date: "2023-02-05"
author: "Daniel Tedman"
description: "An implemented proposal for how my team achieved zero downtime while migrating a WordPress website to a Vue SPA and Spring BFF in Kubernetes."
---

## The Problem

WordPress provided fast development for a team familiar with the platform, but with a new team responsible for the application, and the limitations of WordPress for this kind of application beginning to show pains, a change was needed.

## The Proposal

A proposal was made to the team for how we could move from our current implemented architecture, to a proposed [SPA (Single-page Application)](https://developer.mozilla.org/en-US/docs/Glossary/SPA) and [BFF (Backend for Frontend)](https://samnewman.io/patterns/architectural/bff/) architecture that better aligned with the teams technology choices and would support the current and future plans the team had for the application. The following [Implementation](#implementation) aligns closely with the proposal, but is based on what was actually implemented.

## Implementation

Implementation can be documented as a series of phases that represent releasable moments in time.

### Phase 1: Vue Components

We begin by adding Vue support to WordPress, replacing a widget dashboard with a root Vue container inside a WordPress template. Data is provided to the widgets via WP-JSON APIs defined in WordPress.

### Phase 2: Token Authentication

To prepare for replacing WordPress, we need to adjust how our authentication architecture works. We can no longer rely on WordPress session, instead, we need to authenticate with Tokens granted by OIDC. This required development of custom token authentication that established a WordPress session, but did not require a traditional WordPress login.

```php
# TODO: Implement Me!
```

### Phase 3: Spring BFF

WordPress is moved from the root path `/`, into a sub-path `/wp`. The root path `/` is now configured in Kubernetes to send traffic to a new Spring Boot application, our BFF. A single route `/` is defined that returns the `index.html` associated with Vue, along with a path to handle any static assets imported from this `index.html`.

```yaml
# TODO: Implement Me!
```

### Phase 4: Replace WordPress WP-JSON APIs

Functionality defined within WordPress in WP-JSON APIs, are one by one redefined in our Spring BFF, then our Vue SPA is configured to talk to the new API path in the BFF.

### Phase 5: Remove WordPress

Now that all dependence on WordPress has been removed, we can safely remove WordPress from the deployment, codebase, and database.

## Conclusion

The application is now in a better state that better matches with the problems we are trying to solve with it, and is ready for the scope of known future expansion. Whist this approach worked for us, it would likely need to be handled differently if you relied more on posts or pages in WordPress, instead of a focus on a dashboard.
