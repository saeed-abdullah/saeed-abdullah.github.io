---
layout: page
---


<h2> Archive </h2>

<ul>
{% for post in site.categories.blog %}


    <li>
        <a href="{{ post.url }}" class="no-link">{{ post.title }}</a>

  <div class="entry-date"> {{ post.date | date_to_string }}</div>
    </li>

{% endfor %}

</ul>

