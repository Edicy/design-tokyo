<div id="mobile-menu">

<ul id="mobile-nav" class="clear">
    {% unless site.root_item.hidden? %}<li{% if site.root_item.selected? %} class="active"{% endif %}>
  <a href="{{site.root_item.url}}">{{site.root_item.title}}</a>
    </li>{% endunless %}
    {% for item in site.visible_menuitems %}
	<li{% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="untranslated"{% endunless %}>
   <a href="{{item.url}}"{% unless item.translated? %} class="fci-editor-menuadd"{% endunless %}>{{item.title}}</a>
    </li>{% endfor %}
   {% if editmode %}<li>{% menubtn site.hidden_menuitems %}</li>
   <li>{% menuadd %}</li>{% endif %}
</ul>


<!-- Submenu -->
{% for item in site.menuitems %}
  {% if item.selected? %}{% if editmode %}
  <ul id="mobile-submenu" class="clear">
    <li{% if item.current? %} class="active"{% endif %}><a href="{{item.url}}">{{item.title}}</a></li>
    {% for l2 in item.visible_children %}
    <li{% if l2.selected? %} class="active"{% endif %}><a href="{{ l2.url }}"{% unless l2.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{ l2.title }}</a></li>
    {% endfor %}
    <li>{% menubtn item.hidden_children %}</li>
    <li>{% menuadd parent="item" %}</li>
  </ul>
{% else %}
{% if item.children? %}
  <ul id="mobile-submenu" class="clear">
    <li{% if item.current? %} class="active"{% endif %}><a href="{{item.url}}">{{item.title}}</a></li>
    {% for l2 in item.children %}
    <li{% if l2.selected? %} class="active"{% endif %}><a href="{{l2.url}}">{{l2.title}}</a></li>
     {% endfor %}
     </ul>
  {% endif %}
  {% endif %}
  {% endif %}
{% endfor %}

<!-- Third menu -->
{% if editmode %}
  {% for item in site.menuitems %}
    {% if item.selected? %}
      {% if item.children? %}
        {% for l2 in item.children %}
          {% if l2.selected? %}
            <ul id="mobile-thirdmenu" class="clear">
              {% for l3 in l2.visible_children %}
                <li{% if l3.selected? %} class="active"{% endif %}>
                  <a href="{{ l3.url }}"{% unless l3.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{ l3.title }}</a>
                </li>
              {% endfor %}
              <li>{% menubtn l2.hidden_children %}</li>
              <li>{% menuadd parent="l2" %}</li>
            </ul>
          {% endif %}
        {% endfor %}
      {% endif %}
    {% endif %}
  {% endfor %}
{% else %}
  {% for item in site.menuitems %}
    {% if item.selected? %}
      {% if item.children? %}
        {% for l2 in item.children %}
          {% if l2.selected? %}
            {% if l2.children? %}
            <ul id="mobile-thirdmenu" class="clear">
               {% for l3 in l2.children %}
                 <li{% if l3.selected? %} class="active"{% endif %}><a href="{{ l3.url }}">{{ l3.title }}</a></li>
               {% endfor %}
              </ul>
            {% endif %}
          {% endif %}
        {% endfor %}
      {% endif %}
    {% endif %}
  {% endfor %}
{% endif %}

</div>
<!-- //Third menu -->
