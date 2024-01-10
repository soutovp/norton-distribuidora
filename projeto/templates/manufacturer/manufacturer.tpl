{% include("header.tpl") %}
{{ banners.getByTag(["billboard"]) }}
{% include 'snippets/breadcrumb.tpl' %}
{{ banners.getByTag(["manufacturer_top"]) }}
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
<section class="manufacturer-page">
  <div class="custom-container">
    <div class="section-header manufacturer-header" data-manufacturerId="{{manufacturer.id}}">
      <div class="header">
        <h1>{{manufacturer.title|raw}}</h1>{{ (manufacturer.subtitle is not empty ? "<h2>"~manufacturer.subtitle~"</h2>" : "")|raw}}</div>
    </div>
    <div class="content flex">
      {% if paginate.total > 0 %}
      <div class="column column-left order-0" width="auto">
        {% include 'snippets/collection-sidebar-filter.tpl' %}
      </div>
      <div class="column column-right order-1 w-100">
        {{ banners.getByTag(["center_top"]) }}
        {% include "snippets/collection-list.tpl" %}
        {{ banners.getByTag(["center_bottom"]) }}
      </div>
      {% else %}
      <div class="w-100 text-center">
        <span>Ainda não cadastramos produtos para este fabricante.
          <br>Volte em breve para mais novidades!
        </span>
      </div>
      {% endif %}
    </div>
  </div>
</section>
{{ banners.getByTag(["manufacturer_bottom"]) }}
{{ banners.getByTag(["footer"]) }}
{% include("footer.tpl") %}
