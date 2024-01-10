{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<style>
  section.pages .container {
    flex-direction: column;
  }
  section.pages,
  .pages_content {
    font-weight: 400;
    font-size: 100%;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
  }
  section.pages h1,
  section.pages h2,
  .pages_content h1,
  .pages_content h2 {
    clear: both;
  }
  section.pages ul,
  .pages_content ul {
    list-style: none;
    margin: 0;
    padding: 0;
  }
  section.pages .container,
  .pages_content .container {
    width: 100%;
    margin: 30px auto 30px auto;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    padding: 15px;
  }
  section.pages main,
  .pages_content main {
    display: block;
  }
  section.pages .widget {
    margin-bottom: 30px;
    overflow: hidden;
    color: #464646;
  }
  section.pages .widget a {
    color: #464646;
  }
  section.pages .widget-title {
    position: relative;
    z-index: 0;
    text-transform: uppercase;
    text-align: center;
    margin-bottom: 12px;
    clear: both;
    overflow: hidden;
  }
  section.pages .widget-title h2 {
    color: #888;
    display: inline-block;
    position: relative;
    font-size: 16px;
    line-height: 29px;
    letter-spacing: 1.5px;
  }
  section.pages .widget-title h2:before {
    right: 100%;
    margin-right: 15px;
  }
  section.pages .widget-title h2:after {
    left: 100%;
    margin-left: 15px;
  }
  section.pages .widget-title h2:after,
  section.pages .widget-title h2:before {
    content: "";
    position: absolute;
    top: 50%;
    width: 1000px;
    height: 1px;
    border-bottom-width: 1px;
    border-bottom-style: solid;
    border-color: #e8e8e8;
  }
  section.pages .widget input[type=email],
  section.pages .widget input[type=search],
  section.pages .widget input[type=submit],
  section.pages .widget input[type=text],
  section.pages .widget input[type=url],
  section.pages .widget select,
  section.pages .widget textarea {
    width: 100%;
    padding: 12px;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #e8e8e8;
    color: #464646;
    background-color: #fff;
  }
  section.pages [type=search] {
    flex-grow: 1;
    -webkit-appearance: textfield;
    outline-offset: -2px;
  }
  section.pages .widget_search form {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  section.pages .widget_search button {
    color: #fff;
    background-color: #333;
    width: auto !important;
    cursor: pointer;
    padding: 12px;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #e8e8e8;
    border-left: none;
  }
  .widget_categories ul li {
    width: 100%;
    text-align: left;
    border-color: #e8e8e8;
    border-bottom-width: 1px;
    border-bottom-style: dotted;
    line-height: 45px;
    color: #a1a1a1;
  }
  section.pages main header.page-header h1 {
    font-size: 1.8em;
    margin: 0 0 30px 0;
  }
  section.pages .container .content-area {
    width: 70%;
    padding-right: 40px;
  }
  section.pages .container .sidebar-right {
    width: 30%;
    padding-left: 40px;
  }
  section.pages .container .content-area .page-main .page-posts article {
    display: grid;
    grid-template-columns: .7fr 1.3fr;
    grid-template-rows: auto auto auto auto;
    grid-template-areas: "thumbnail title""thumbnail summary""thumbnail author""footer footer";
    margin-bottom: 20px;
  }
  section.pages .container .content-area .page-main .page-posts article .page-thumbnail {
    grid-area: thumbnail;
  }
  section.pages .container .content-area .page-main .page-posts article .page-header {
    grid-area: title;
  }
  section.pages .container .content-area .page-main .page-posts article .page-summary {
    grid-area: summary;
  }
  section.pages .container .content-area .page-main .page-posts article .page-published {
    grid-area: author;
  }
  section.pages .container .content-area .page-main .page-posts article .page-footer {
    grid-area: footer;
  }
  section.pages .container .content-area .page-main .page-posts article .page-thumbnail {
    padding-right: 20px;
  }
  section.pages .container .content-area .page-main .page-posts article .page-thumbnail img {
    border-radius: 3px;
    height: auto;
    margin: 4px 0 0 0;
    max-width: 260px;
    width: 100%;
  }
  section.pages .container .content-area .page-main .page-posts article .page-summary {
    font-family: roboto, sans-serif;
    font-weight: 300;
    color: #000c;
    font-size: 1em;
    margin-bottom: 5px;
  }
  section.pages .container .content-area .page-main .page-posts article small.page-published {
    font-size: 75%;
    color: #212529;
  }
  section.pages .container .content-area .page-main .page-posts article small.page-published a {
    font-weight: 700;
    text-decoration: underline;
  }
  section.pages .container .content-area .page-main .page-posts article footer {
    clear: both;
    padding: 0;
    margin: 0;
    text-align: right;
    background: 0 0;
    text-transform: uppercase;
    font-weight: 700;
  }
  section.pages .container .content-area .page-main .page-posts article .page-header .page-title {
    margin: 0;
  }
  section.pages_content .container .content-area {
    width: 100%;
  }
  section.pages_content header.page-header {
    position: relative;
    margin-bottom: 40px;
  }
  section.pages_content header.page-header figure.page-thumbnail {
    position: relative;
    padding-bottom: 80px;
    margin: 0 0 20px;
    background-color: transparent;
    background-repeat: no-repeat;
    background-size: cover;
    -webkit-box-align: end;
    -ms-flex-align: end;
    align-items: flex-end;
    width: 100%;
    min-height: 400px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }
  section.pages_content header.page-header figure.page-thumbnail:before {
    background: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 0)), to(rgba(0, 0, 0, .2)));
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, .2));
    display: block;
    width: 100%;
    height: 100%;
    bottom: 0;
    left: 0;
    content: "";
    z-index: 8;
    position: absolute;
  }
  section.pages_content header.page-header .page-info {
    z-index: 8;
    margin: 0 auto;
  }
  section.pages_content header.page-header figure.page-thumbnail .page-info {
    text-align: center;
    color: #fff
  }
  section.pages_content header.page-header h1.page-title {
    margin: 0;
    font-weight: 700;
    font-size: 2.5rem;
  }
  section.pages_content header.page-header figure h1.page-title {
    margin-bottom: -50px;
  }
  section.pages_content header.page-header .page-cat {
    margin: 0 0 10px;
  }
  section.pages_content header.page-header .page-cat .cat-links {
    font-size: 12px;
  }
  section.pages_content header.page-header .page-cat .cat-links a {
    color: #fff;
    background-color: #16181a;
    padding: 10px;
    text-transform: uppercase;
    margin: 0 5px;
    display: inline-block;
  }
  section.pages_content .page-center-content {
    width: 100%;
    margin: 0 auto;
  }
  section.pages_content h2.page-description {
    color: #585858;
    margin: 30px 0 10px;
    font-weight: 400;
    font-size: 1.2em;
    border-bottom: 1px solid #e8e8e8;
    padding-bottom: 30px
  }
  ;
  section.pages_content .page-center-content .page-content {
    margin-bottom: 70px;
    line-height: 1.5;
  }
  section.pages_content .page-footer {
    background: 0 0;
    font-size: 14px;
    font-weight: 600;
    padding: 0;
  }
  section.pages_content .page-footer .cat-links,
  section.pages_content .page-footer .tags-links {
    display: block;
    padding: 20px 0;
    border-top: 1px solid #e6e6e6;
  }
  section.pages_content .page-footer .cat-links a,
  section.pages_content .page-footer .tags-links a {
    font-size: .9em;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    font-weight: 400;
    background-color: #fff;
    color: #333;
  }
  section.pages_content .page-footer .tags-links a {
    margin: 0 5px 5px;
    color: #a1a1a1;
    border: 1px solid #e8e8e8;
    padding: 6px 12px;
  }
  section.pages_content .page-footer .tags-links a:first-child {
    margin-left: 20px;
  }
  section.pages_content .page-footer .cat-links a:not(:first-child):before {
    content: "/";
    margin: 0 5px;
  }
  section.pages_content .page-footer .page-author {
    display: flex;
    flex-flow: row nowrap;
    font-size: 1em;
    font-weight: 400;
    border-top: 1px solid #e6e6e6;
    padding: 20px 0;
    align-items: center;
  }
  section.pages_content .page-footer .page-author .author-avatar {
    max-width: 80px;
    max-height: 80px;
  }
  section.pages_content .page-footer .page-author .author-avatar img.avatar {
    border-radius: 50%;
    max-width: 100%;
    height: auto;
    margin: auto;
  }
  section.pages_content .page-footer .page-author .author-info {
    margin-left: 40px;
    color: #323232;
    font-size: 10pt;
  }
  section.pages_content .page-footer .page-author .author-info .author-name,
  section.pages_content .page-footer .page-author .author-info .author-name span {
    margin: 0;
    font-size: 10pt;
  }
  section.pages_content .page-footer .page-author .author-info .author-bio {
    margin: 10px 0;
  }
  section.pages_content .page-footer .date-published {
    font-size: 9pt;
  }
  section.pages_content .page-footer>.date-published {
    font-weight: 400;
    color: #323232;
    font-weight: 400;
    border-top: 1px solid #e6e6e6;
    padding: 20px 0;
  }
  @media (min-width:768px) {
    section.pages .container,
    .pages_content .container {
      max-width: 720px;
    }
  }
  @media (min-width:992px) {
    section.pages .container,
    .pages_content .container {
      max-width: 940px;
    }
  }
  @media (min-width:1200px) {
    section.pages .container,
    .pages_content .container {
      max-width: 1160px;
    }
  }
  @media (max-width:992px) {
    section.pages .container {
      flex-direction: column;
    }
    section.pages .container .content-area, section.pages .container .sidebar-right {
      width: 100%;
    }
  }
  @media (max-width:600px) {
    section.pages .container .content-area .page-main .page-posts article {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 10px;
    }
    #breadcrumb {
      display: flex !important;
    }
  }
</style>
<section class="pages_content">
  <div class="container ">
    <div class="content-area">
      <main class="page-main">
        <article id="page-{{page.id}}" class="page-{{page.id}} {{ page.keywords|length > 0 ? "tag-"~page.keywords|map((tag) => "#{tag}"|replace({' ':'-'}))|join(' tag-') : ""}}">
          <header class="page-header">
            {% if page.image is not empty %}
            <figure class="page-thumbnail" style="background-image: url({{page.image}});">
              <div class="page-info">
                <div class="page-cat">
                  <span class="cat-links">
                    {% for category in page.categories %}{{ ('<a href="%s" rel="category">%s</a>'|format(category.url,category.title))|raw }}{% endfor %}
                  </span>
                </div>
                <h1 class="page-title" itemprop="headline">{{page.title|raw}}</h1>
              </div>
            </figure>
            {% if page.description is not empty %}
            <h2 class="page-description" itemprop="description">{{page.description|raw}}</h2>
            {% endif %}
            {% else %}
            <div class="page-info">
              <div class="page-cat">
                <span class="cat-links">
                  {% for category in page.categories %}{{ ('<a href="%s" rel="category">%s</a>'|format(category.url,category.title))|raw }}{% endfor %}
                </span>
              </div>
              <h1 class="page-title" itemprop="headline">{{page.title|raw}}</h1>
              {% if variables.cms_config_geral.cms_page_description is not empty %}
              <h2 class="page-description" itemprop="description">{{page.description|raw}}</h2>
              {% endif %}
            </div>
            {% endif %}
          </header>
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