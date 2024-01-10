{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<link media="all" href="{{asset("css/addons/pagination.min.css","ui")}}" type="text/css" rel="stylesheet">
<style>
  section.pages,
  section.pages_content {
    font-weight: 400;
    font-size: 100%;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
  }
  section.pages h1,
  section.pages h2,
  section.pages_content h1,
  section.pages_content h2 {
    clear: both;
  }
  section.pages ul,
  section.pages_content ul {
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
  section.pages .container a, .pages_content .container a {
    color: var(--color-txt-80);
  }
  section.pages .container a:hover, .pages_content .container a:hover {
    color: var(--cor-txt-nome-prto);
  }
  section.pages main,
  section.pages_content main {
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
    padding: 15px;
  }
  section.pages .container .sidebar-right {
    width: 30%;
    padding: 15px;
  }
  section.pages .container .content-area .page-main .page-posts article {
    display: grid;
    grid-template-columns: .7fr 1.3fr;
    grid-template-rows: auto auto auto auto;
    grid-template-areas: "thumbnail title""thumbnail summary""thumbnail author""footer footer";
    margin-bottom: 20px;
    padding: 15px;
  }
  section.pages .container .content-area .page-main .page-posts article .page-thumbnail {
    grid-area: thumbnail;
  }
  section.pages .container .content-area .page-main .page-posts article .page-header {
    grid-area: title;
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
    grid-area: summary;
    font-weight: 300;
    color: var(--color-txt-60);
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
    z-index: 9;
    position: absolute;
  }
  section.pages_content header.page-header .page-info {
    z-index: 999;
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
    pages_content .container {
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
      width: 100% !important;
      padding: 0 !important;
    }
  }
  @media (max-width:600px) {
    section.pages .container .content-area .page-main .page-posts article {
      display: flex !important;
      flex-direction: column;
      align-items: center;
      gap: 10px;
      text-align: center;
    }
    #breadcrumb {
      display: flex !important;
    }
  }
</style>
<section class="pages">
  <div class="container">
    <div class="content-area">
      <main class="page-main">
        {% if page.filter.search is defined %}
        <header class="page-header">
          <h1 class="page-title">Resultados da busca por:
            <span>{{page.filter.search}}</span>
          </h1>
        </header>
        {% endif%}
        {% if page.filter.tag is defined %}
        <header class="page-header">
          <h1 class="page-title">Marcação:
            <span>{{page.filter.tag}}</span>
          </h1>
        </header>
        {% endif%}
        <div class="page-posts">
          {% for page in page.contents %}
          {% set summary = (page.description|striptags) %}
          <article id="page-{{page.id}}"
                   class="template-cards page-{{page.id}} {{ page.keywords|length > 0 ? "tag-"~page.keywords|map((tag) => "#{tag}"|replace({' ':'-'}))|join(' tag-') : ""}}">
            <a class="page-thumbnail" href="{{page.url}}" aria-hidden="true">
              {% if page.image is not empty %}
              <img width="260" src="{{page.image}}" class="" alt="{{page.title|raw}}">
              {% endif %}
            </a>
            <header class="page-header">
              <h2 class="page-title">
                <a href="{{page.url}}" rel="bookmark">{{page.title|raw}}</a>
              </h2>
            </header>
            <div class="page-summary">{{ summary|raw }}</div>
            {% if page.show_author and page.show_date and page.author.name is not empty %}
            <small class="date-published">Por {{page.author.name|raw}} |
              {{page.date_published|format_datetime(pattern="dd 'de' MMMM 'de' YYYY', &#xE0;s' HH:mm:ss", locale='brl')|raw}}</small>
            {% elseif page.show_author and page.author.name is not empty %}
            <small class="date-published">Por {{page.author.name|raw}}</small>
            {% elseif page.show_date %}
            <small class="date-published">Publicado em
              {{page.date_published|format_datetime(pattern="dd 'de' MMMM 'de' YYYY', &#xE0;s' HH:mm:ss", locale='brl')|raw}}</small>
            {% endif %}
            <footer class="page-footer">
              <a href="{{page.url}}" class="readmore-link">
                <i class="fa-duotone fa-book">
                </i> Ler mais
              </a>
            </footer>
          </article>
          {% endfor %}
        </div>
        {% set paginate = {total:page.pagination.total,current: page.pagination.current,main_url: page.url } %}
        {% include "snippets/paginate.tpl" %}
      </main>
    </div>
    <aside class="sidebar-right widget-area template-cards">
      <div id="search" class="widget widget_search">
        <form role="search" method="get" id="searchform" name="searchform" action="{{page.home.url}}">
          <input type="search" name="s" id="s" placeholder="Pesquisa..." value="" autocomplete="off">
          <button type="submit" id="searchsubmit">
            <i class="fas fa-search">
            </i>
          </button>
        </form>
      </div>
      <div id="categories" class="widget widget_categories">
        <div class="widget-title">
          <h2>Categorias
          </h2>
        </div>
        <ul class="cat-links">
          {% for category in page.categories %}{{ ('<li class="cat-item cat-item-%s"><a href="%s" rel="category">%s</a></li>'|format(category.id,category.url,category.title))|raw }}{% endfor%}
        </ul>
      </div>
    </aside>
  </div>
</section>
{% include("footer.tpl") %}