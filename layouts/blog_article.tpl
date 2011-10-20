<!DOCTYPE html>
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
         <div class="intro"> {% content name="slogan" %} </div>
        {% include "Footer" %}
    </div>
    <!-- //left-column -->
    {% include "Mobilemenu" %}
    <div id="content">
      
          <h2>{% editable article.title %} <span class="meta">{{article.created_at | format_date:"short"}} / {{article.author.name}}</span></h2>
           <div class="excerpt">{% editable article.excerpt %}</div>
           <div class="article-body">{% editable article.body %}</div>
           
           {% case article.comments_count %}{% when 0 %}
           
           {% else %}
           <div id="comments">
            <h2>{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{article.comments_count}}</span></h2>
            <ul id="comments-list">
            {% for comment in article.comments %}
              <li class="edy-site-blog-comment">
                <p class="comment-meta"><b>{{comment.author}}</b> / {{comment.created_at | format_date:"short"}} {% removebutton %}</p>
                <p>{{comment.body}}</p>
              </li>{% endfor %}
            </ul>
          </div>
          <!-- //comments -->
          {% endcase %}
          <div id="comment-form">
            <h2>{{"add_a_comment"|lc}}</h2>
            {% commentform %}
            {% unless comment.valid? %}<ul>
            {% for error in comment.errors %}
            <li>{{ error | lc }}</li>
            {% endfor %}
            </ul>{% endunless %}
             <div class="form_fields">
              <div class="form_field">
                <label for="name">{{"name"|lc}}</label>
                <input type="text" id="name" class="form_field_textfield" value="{{comment.author}}" name="comment[author]" />
              </div>
              <div class="form_field">
                <label for="email">{{"email"|lc}}</label>
                <input type="text" id="email" class="form_field_textfield" value="{{comment.author_email}}" name="comment[author_email]" />
              </div>
              <div class="form_field">
                <label for="comment">{{"comment"|lc}}</label>
                <textarea id="comment" class="form_field_textarea" rows="4" cols="5" name="comment[body]">{{comment.body}}</textarea>
              </div>
              </div>
              <div class="form_submit">
                <input type="submit" class="submit" value="{{"submit"|lc}}" />
              </div>
              <!-- //form_submit -->
            {% endcommentform %}
          </div>
          <!-- //comment-form -->     

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