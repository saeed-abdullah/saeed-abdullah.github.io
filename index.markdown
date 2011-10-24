---
layout: name
title: Home

section: Home
---

{% for post in site.posts limit:10 %}
<div class="section list">
  <h1>{{ post.date | date_to_string }}</h1>
  <p class="line">
  <a class="title" href="{{ post.url }}">{{ post.title }}</a>

  </p>
  <p class="thin_line"></p>
  
  <p class="content">{{ post.content }}</p>


  <p class="line">
  <a class="comments" href="{{ post.url }}#disqus_thread">View Comments</a>
 
    {% include nav-tag.html %}

 </p>
 
  <p class="bottom_spacer"></p>

</div>
{% endfor %}

<p>
<a href="past.html">Older Posts &rarr;</a>
</p>

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
