<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{blog.rss_link}}
</head>
<body>
<div id="wrap">
 <div id="tokyo-badge"> {% loginblock %}Edicy Tokyo theme{% endloginblock %} </div>
  <div id="content-wrap" class="clear">
    <div id="left-column">
         <h2 id="site-name">{% editable site.header %}</h2>
         <div class="intro clear"> {% content name="slogan" %} </div>
        {% include "Footer" %}
    </div>
    <!-- //left-column -->
    {% include "Mobilemenu" %}
    <div id="content" class="clear">
      {% if editmode %}<p>{% addbutton class="add-article" %}</p>{% endif %}
       <ul id="bloglist">{% for article in articles %}
        <li>
          <h2><a href="{{article.url}}">{{article.title}}</a> <span class="meta">{{article.created_at | format_date:"short"}} / {{article.author.name}}</span></h2>
          {{article.excerpt}}
          <p class="more"><a href="{{article.url}}">{{"read_more"|lc}}</a> <span class="separate">/</span> <a href="{{article.url}}">{% case article.comments_count %}{% when 0 %}{{"Write_first_comment" | lc}}{% else %}{{"comments" | lc}} ({{article.comments_count}}){% endcase %}</a></p>
        </li>
        {% endfor %}
       </ul>
    </div>
    <!-- //content -->
    <div id="right-column">
      {% include "Menu" %}
      {% include "Search" %}
      {% include "Langmenu" %}
      {% include "Footer-mobile" %}      
    </div>
    <!-- //right-column -->
  </div>
  <!-- //content-wrap -->
</div>
<!-- //wrap -->
 {% include "JS" %}
</body>
</html>
