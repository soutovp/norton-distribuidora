{% include("header.tpl") %}
{{ banners.getByTag(["billboard"]) }}
{% include 'snippets/breadcrumb.tpl' %}
<link media="all" href="{{asset("css/addons/pagination.min.css","ui")}}" type="text/css" rel="stylesheet">
<style type="text/css">
  section.search-results-page {
    margin: 15px 0 30px;
}
  /*RESULTADO DE BUSCA*/
  section.search-results-page .mode-list figure img {
    max-width: 100%;
}
  section.search-results-page .collection-header {
    margin: 0 10px 20px 0;
    padding: 10px;
    background-color: var(--cor-bg-blcs-gp, #fff);
  }
  .collection-grid.mode-list {
    gap: 30px 0;
  }
  .mode-list figure img {
    max-width: 40%;
  }
  /*FIM*/
  /*BUSCA SEM RESULTADO*/
  section.search-noresults {
    margin: 40px auto;
    width: fit-content;
    padding: 0 15px;
  }
  section.search-noresults .header h1 {
    font-size: 1em;
  }
  section.search-noresults .form {
    margin: 20px 0;
  }
  section.search-noresults .form form {
    display: flex;
    justify-content: space-between;
  }
  section.search-noresults .form form input {
    width: 100%;
    margin-right: 10px;
    padding: 5px 10px;
  }
  section.search-noresults .suggestions {
    font-size: 0.7em;
    color: #828282;
    font-weight: normal;
    margin: 0 0 20px 0;
    display: flex;
    padding: 0;
  }
  section.search-noresults .suggestions .icon {
    font-size: 2.3em;
    margin: 10px 20px 0 0;
  }
  section.search-noresults .suggestions .texts {
    display: flex;
    flex-flow: column wrap;
  }
  section.search-noresults .suggestions .texts .h1 {
    font-size: 1.2em;
    font-weight: bold;
  }
  section.search-noresults .suggestions .texts .text:before {
    content: '2022';
    font-size: 1.2em;
    margin-right: 8px;
  }
</style>
{% if paginate.records > 0 %}
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
<section class="search-results-page">
  <div class="custom-container">
    {% include 'snippets/notifications.tpl' %}
    <div class="section-header search-header">
      <div class="header text-center">
        <h1>{{keywords|raw}}</h1>({{(paginate.records>1?'<b>'~paginate.records~'</b> produtos' : '<b>1</b> produto')|raw}})
        {{ (other_keywords|length > 0 ? '<h2><div class="didyoumean">Você quis dizer: (<a class="hiperlink" href="/'~other_keywords|replace({' ':'+'})~'">'~other_keywords~'</a>)</div></h2>' : '')|raw }}
      </div>
    </div>
    <div class="content flex">
      <div class="column column-left order-0" width="auto">
        {% include 'snippets/collection-sidebar-filter.tpl' %}
      </div>
      <div class="column column-right order-1 w-100">
        {{ banners.getByTag(["center_top"]) }}
        {% include "snippets/collection-list.tpl" %}
        {{ banners.getByTag(["center_bottom"]) }}
      </div>
    </div>
  </div>
</section>
{% else %}
<section class="search-noresults">
  {% if keywords|length > 0 %}
  <div class="header">
    <h1>Nenhum resultado encontrado para "
      <b>{{keywords|raw}}</b>".
    </h1>
  </div>
  {% endif %}
  <div class="form">
    <form method="get" name="fsearch" id="fsearch" action="/q">
      <input name="keywords" id="keywords" type="text" class="searchTerm" placeholder="Buscar por...">
      <button type="submit" class="btn btn-primary searchButton"> 
        <i class="fa fa-search">
        </i>
      </button>
    </form>
  </div>
  <div class="suggestions">
    <i class="icon far fa-info-circle">
    </i>
    <div class="texts">
      <div class="h1">Para obter melhores resultados em sua busca:
      </div>
      <span class="text">Verifique se não houve erro de digitação.
      </span>
      <span class="text">Procure utilizar sinônimos ao termo desejado.
      </span>
      <span class="text">Tente palavras menos especifícas e logo após use os filtros da busca.
      </span>
    </div>
  </div>
</section>
{% endif %}
{% include("footer.tpl") %}
