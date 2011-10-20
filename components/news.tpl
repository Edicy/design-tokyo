<div id="latest-news">
{% for a in site.latest_1_articles %}
<h3>{{"latest_news"|lc}}</h3>
<ul>
{% for article in site.latest_3_articles %}
  <li><a href="{{article.url}}">{{article.title}}</a> <span>{{article.created_at | format_date:"short"}}</span></li>
{% endfor %}
</ul>
{% endfor %}
</div>

