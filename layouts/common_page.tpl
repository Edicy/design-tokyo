<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %} 
</head>
<body>
<div id="wrap" class="content-hyphenate">
  <div id="content-wrap" class="clear">
    <div id="left-column">
        <h2 id="site-name">{% editable site.header %}</h2>
         <div class="intro clear"> {% content name="slogan" %} </div>
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
