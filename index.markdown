---
layout: name
title: Home

section: Home
---

{% for post in site.categories.blog limit:10 %}

<article class="post">
    <!-- Title -->
    <h2 class="entry-title">
        <a href="{{ post.url }}" class="no-link">{{ post.title }}</a>
    </h2>
    <!-- End Title -->
    
    <div class="entry-date"> {{ post.date | date_to_long_string }}</div>


    <!-- Post Content -->
    <div class="entry-content">{{ post.content }}</div>
    <!-- Post Content Ends -->


</article>

{% endfor %}

