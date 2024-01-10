<style>
  section.category-page {
    margin-bottom: 50px;
  }
  .section-header .hide-on-small-and-down {
    font-size: 1em;
    font-weight: 300;
  }
  .category-page .tag-center_top {
    margin: 0 10px 17px 0;
  }
  .category-page .tag-center_top img {
    border-radius: 3px;
  }
  .category-page .collection-header {
    margin-bottom: 20px;
    padding: 10px;
    background-color: var(--cor-bg-blcs-gp, #fff);
  }
  section.category-page .product-card-list-title a {
    font-size: 100%;
    min-height: auto;
    -webkit-line-clamp: 1;
  }
  @media (max-width: 768px) {
    .category-header .header h1 {
      margin: 15px 0;
      font-size: 130%;
    }
  }
</style>
{% include("header.tpl") %}
{{ banners.getByTag(["billboard"]) }}
{% include 'snippets/breadcrumb.tpl' %}
<link media="all" href="{{asset("css/addons/pagination.min.css","ui")}}" type="text/css" rel="stylesheet">
<script type="text/javascript" defer>
  $(function() {
    $(".sidebar-filter-block .header").click(function () {
      $(this).toggleClass('closed');
    }
                                            );
    $(".collection-filter > button").click(function () {
      $(".collection-sidebar-filter").addClass('opened');
      $(".collection-sidebar-filter .sidebar-filter-block:not(.filter--selected)").each(function(){
        if ($("li.checked",$(this)).length==0) {
          $(".header", $(this)).addClass("closed");
        }
      }
                                                                                       );
    }
                                          );
    $(".collection-sidebar-filter .collection-sidebar-close,.collection-sidebar-overlay").click(function (e) {
      $(".collection-sidebar-filter").removeClass('opened');
    }
                                                                                               );
  }
   );
</script>
<section class="category-page">
  <div class="custom-container">
    <div class="section-header category-header" data-categId="{{category.id}}">
      <div class="header">
        <h1>{{category.title|raw}}</h1>{{ (category.subtitle is not empty ? '<h2 class="hide-on-small-and-down">'~category.subtitle~"</h2>" : "")|raw}}</div>
    </div>
    <div class="content flex">
      {% if paginate.total > 0 %}
      <div class="column column-left order-0" width="auto">
        {% include 'snippets/collection-sidebar-filter.tpl' %}
      </div>
      <div class="column column-right order-1 w-100">
        {{ banners.getByTag(["center_top"]) }}
        {% if paginate.current == 1 %}
        {% set showcase_tag = 'cat_' ~ category.title|convert_encoding('UTF-8', 'ISO-8859-1')|slug('_')|lower %}
        {{ showcase.getByTag(showcase_tag) }}
        {% endif %}
        {% include "snippets/collection-list.tpl" %}
        {{ banners.getByTag(["center_bottom"]) }}
      </div>
      {% else %}
      <div class="w-100 text-center">
        <span>Ainda não cadastramos produtos nesta sessão.
          <br>Volte em breve para mais novidades!
        </span>
      </div>
      {% endif %}
    </div>
  </div>
</section>
{{ banners.getByTag(["footer"]) }}
{% include("footer.tpl") %}  
