---
title: Building my blog with Hexo
date: 2017-03-30 10:54:31
tags: [blog, hexo, static-site-generator, node.js]
---
# Overview
After sharing some concepts behind the decision to public my <a href="{% post_path just-another-blog %}">~~just another~~ blog</a>, it's time to share some insights about the technical stuff.
<!-- more -->
<img class="nofancybox img-post" src="{% post_path building-my-blog-with-hexo %}/blog-1.jpg" alt="hippo"/>
# Go for "Static Site Generator"
I have to admit: this decision is not free from marketing and [trendy influences](https://risingstars2016.js.org/#ssg).
But, in this case, I think that the advantages  behind the extraordinary diffusion of blogs (especially technical ones) made by static content really convinced me to be on the right path.
## Why a static generated website?
I could list many reasons that makes static site generator a convenient choice:
* lightweight and cheap hosting: being just static assets you don't need any type of runtime/server/middleware/CMS from the hosting provider. 
* fast: the browser and the webserver are just communicating through HTTP exchanging plain HTML documents (and CSS/images/Javascript) using all the feature of the web platform, such as caching (browser, CDN), standard hyperlinks and so on.
* SEO-friendly by design.

All these reasons are true, but I think that the most important concept resides in the _specific domain_ that we are facing.
After all, what is the target? It's **blogging**! And what blogging means for my needs? Ok, let's try to list the _requirements_: 
* I want to be able to post some **article**.
* I want also add some static **pages**
* The frequency? I think _one day_ it's a rasonable maximum
