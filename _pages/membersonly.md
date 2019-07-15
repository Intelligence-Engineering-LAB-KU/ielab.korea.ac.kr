---
layout: membersonly
permalink: membersonly.html


---

<div class="grid__wrapper">
  {% for post in site.posts %}
	{% if post.private %}
		{% include archive-single.html %}
		<a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a>
	{% endif %}
  {% endfor %}
</div>



