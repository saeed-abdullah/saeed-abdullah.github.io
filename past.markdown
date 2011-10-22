---
layout: name
title: Archives
section: Past

keywords: Machine Learning, Statistics, Blog, Research, Academia
---

Archives
========

This is the complete archive of posts in reverse chronological order.

{% for post in site.posts %}
<div class="section list">
  <h1>{{ post.date | date_to_string }}</h1>
  <p class="line">
  <a class="title" href="{{ post.url }}">{{ post.title }}</a>

  </p>
  <p class="excerpt">{{ post.excerpt }}</p>

  <p class="line">
  <a class="comments" href="{{ post.url }}#disqus_thread">View Comments</a>
  {% include nav-tag.html %}
  </p>
</div>
{% endfor %}
  
<script type="text/javascript">
//<![CDATA[
(function() {
		var links = document.getElementsByTagName('a');
		var query = '?';
		for(var i = 0; i < links.length; i++) {
			if(links[i].href.indexOf('#disqus_thread') >= 0) {
				query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
			}
		}
		document.write('<script type="text/javascript" src="http://disqus.com/forums/saeedabdullah/get_num_replies.js' + query + '"></' + 'script>');
	})();
//]]>
</script>
