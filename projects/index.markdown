---
layout: page
title: Projects
---

Current Projects
----
<ul>
{% assign pages_list = site.pages %}
    {% for node in pages_list %}
        {% if node.project_status != null %}
            {% if node.project_status == "current" %}
                <li> <a href="{{ node.url }}">{{ node.title }}</a>
                <div> {{node.description}} </div> </li>
            {% endif %}
        {% endif %}
    {% endfor %}
</ul>

Previous Projects
----
<ul>
{% assign pages_list = site.pages %}
    {% for node in pages_list %}
        {% if node.project_status != null %}
            {% if node.project_status == "old" %}
                <li> <a href="{{ node.url }}">{{ node.title }}</a>
                <div> {{node.description}} </div> </li>
            {% endif %}
        {% endif %}
    {% endfor %}
</ul>

