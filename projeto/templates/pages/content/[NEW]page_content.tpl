{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<section class="pages_content">
  <div class="container ">
    <div class="content-area">
      <main class="page-main">
        <article id="page-{{page.id}}" class="page-{{page.id}} {{ page.keywords|length > 0 ? "tag-"~page.keywords|map((tag) => "#{tag}"|replace({' ':'-'}))|join(' tag-') : ""}}">
          <div class="page-center-content">
            <div class="page-content">
              {{ include(template_from_string(page.content)) }}
            </div>
            <footer class="page-footer">
              {% if page.show_author and page.author.name is not empty %}
              <div class="page-author">
                <div class="author-avatar">
                  <img src="{{page.author.avatar}}" alt="{{page.author.name|raw}}" class="avatar">
                </div>
                <div class="author-info">
                  <h5 class="author-name">Por 
                    <span>{{page.author.name|raw}}</span>
                  </h5>
                  {% if page.author.bio is not empty %}
                  <div class="author-bio">{{page.author.bio|raw}}</div>
                  {% endif %}
                  {% if page.show_date %}
                  <div class="date-published">Publicado em {{page.date_published|format_datetime(pattern="dd 'de' MMMM 'de' YYYY '&#xE0;s' HH:mm:ss", locale='brl')|raw}}</div>
                  {% endif %}
                </div>
              </div>
              {% elseif page.show_date %}
              <div class="date-published">Publicado em {{page.date_published|format_datetime(pattern="dd 'de' MMMM 'de' YYYY '&#xE0;s' HH:mm:ss", locale='brl')|raw}}</div>
              {% endif %}
              {% if page.categories|length > 0 %}
              <span class="cat-links">
                {% for category in page.categories %}{{ ('<a href="%s" rel="category">%s</a>'|format(category.url,category.title))|raw }}{% endfor %}
              </span>
              {% endif %}
              {% if page.keywords|length > 0 %}
              <span class="tags-links">
                <i class="fas fa-tags">
                </i>
                {% for tag in page.keywords %}{{ ('<a href="'~ page.home.url ~'?tag=%s" rel="tag">#%s</a>'|format((tag|replace({' ':'+'})),tag))|raw }}{% endfor %}
              </span>
              {% endif %}
            </footer>
          </div>
        </article>
      </main>
    </div>
  </div>
</section>
{% include("footer.tpl") %}