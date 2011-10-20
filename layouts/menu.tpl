<ul id="nav">
    {% unless site.root_item.hidden? %}<li{% if site.root_item.selected? %} class="active"{% endif %}>
  <a href="{{site.root_item.url}}">{{site.root_item.title}}</a>
	</li>{% endunless %}
    {% for item in site.visible_menuitems %}
	<li{% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="untranslated"{% endunless %}>
   <a href="{{item.url}}"{% unless item.translated? %} class="fci-editor-menuadd"{% endunless %}>{{item.title}}</a>
    {% if item.selected? %}
    {% if editmode %}
     <ul id="submenu">
            {% for level2 in item.visible_children %}
               <li{% unless level2.translated? %} class="untranslated"{% endunless %}{% if level2.selected? %} class="active"{% endif %}><a href="{{ level2.url }}"{% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %}>{{ level2.title }}</a>
             {% if level2.selected? %}
                 <ul id="thirdmenu">
                     {% for level3 in level2.visible_children %} 
          <li{% if level3.selected? %} class="active"{% endif %}{% unless level3.translated? %} class="untranlated"{% endunless %}>
          <a href="{{level3.url}}"{% unless level3.translated? %} class="fci-editor-menuadd"{% endunless %}>{{level3.title}}</a>
         </li>{% endfor %}
         <li>{% menubtn level2.hidden_children %}</li>     
         <li>{% menuadd parent="level2" %}</li>
       </ul>
             {% endif %} 
             </li>
             {% endfor %}
            <li>{% menubtn item.hidden_children %}</li>    
            <li>{% menuadd parent="item" %}</li>
     </ul>
   {% else %}
   {% if item.children? %}
   <ul id="submenu">
     {% for level2 in item.children %}
       <li{% if level2.selected? %} class="active"{% endif %}><a href="{{ level2.url }}">{{ level2.title }}</a>
     {% if level2.selected? %}{% if level2.children? %}
     <ul id="thirdmenu">{% for level3 in level2.children %}
      <li{% if level3.selected? %} class="active"{% endif %}>
      <a href="{{level3.url}}">{{level3.title}}</a>
      </li>{% endfor %}
     </ul>{% endif %}{% endif %}
       </li>
     {% endfor %}
     </ul>
   {% endif %}
   {% endif %}
   {% endif %}
	</li>{% endfor %}
    
   {% if editmode %}<li>{% menubtn site.hidden_menuitems %}</li>
   <li>{% menuadd %}</li>{% endif %}
</ul>


