<!DOCTYPE html>
<head>
{% include "SiteHeader" %} 
</head>
<body id="front">
<div id="wrap">
  <div id="tokyo-badge"> {% loginblock %}Edicy Tokyo theme{% endloginblock %}</div>
  <div id="content-wrap" class="clear">
   <h1 id="site-name" class="clear">{% editable site.header %}</h1>
    <div id="left-column">
      <div class="intro"> {% content name="slogan" %} </div>
       {% include "News" %}
       {% include "Footer" %}
    </div>
    <!-- //left-column -->
    {% include "Mobilemenu" %}
    <div id="content">
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
