---
date: 2019-01-01T00:00:00+10:00
description: "Application form used by prospective APNIC Members to join APNIC and request Internet Resources."
tags:
    [
        Babel,
        Bash,
        Docker,
        EditorConfig,
        ESLint,
        Git,
        GitLab,
        GitLab CI,
        Helm,
        Java,
        JavaScript,
        Jest,
        JSON,
        JUnit,
        Kubernetes,
        Maven,
        Node,
        NPM,
        Prettier,
        Scss,
        Spring,
        VueCLI,
        VueJS,
        WebPack,
    ]
title: "APNIC Membership Application"
---

![Screenshot](/images/my-work/apnic-membership-application.png)

Application form used by prospective APNIC Members to join APNIC and request Internet Resources.

**2019 - NOW**

[membership-application.apnic.net](https://membership-application.apnic.net/)

## Business Need

APNIC needed to reduce the number of fraudulent applications it received, increase the number of legitimate applications, and reduce the burden on support staff needing to followup with applicants in their new membership application form.

## Our Solution

After consultation with the APNIC community, our team chose to learn from the existing form to implement a new platform that would satisfy the business needs.

Our solution is built on a single page application (SPA) architecture written in VueJS, with a back-end for front-end (BFF) API that provides persistence and submission capabilities.

To assist in reducing the number of fraudulent applications, we leveraged the APNIC Login system, requiring new applications to register before submitting an application.

## My Contribution

As a full stack web developer, my contribution was primarily focused on implementing the VueJS SPA and associated build and release automation. Jest automated testing was implemented to assist in validating functionality and reducing the risk of future changes. When needed, I had also contributed to the Java based BFF.
