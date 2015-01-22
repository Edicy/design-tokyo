<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %} 
</head>
<body id="front">
<div id="wrap">
  <div id="tokyo-badge"> {% loginblock %}Voog Tokyo theme{% endloginblock %}</div>
  <div id="content-wrap" class="clear">
   <div id="site-name" class="clear">{% editable site.header %}</div>
    <div id="left-column">
      <div class="intro clear"> {% content name="slogan" %} </div>
       {% include "News" %}
       {% include "Footer" %}
    </div>
    <!-- //left-column -->
    {% include "Mobilemenu" %}
    <div id="content" class="clear" data-search-indexing-allowed="true">
      {% content %}
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
