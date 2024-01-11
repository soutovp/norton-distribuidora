<div class="collection-filter hide-on-large-only">
    <button class="flex" type="button" align-items="center" justify-content="center">
        <i class="fas fa-filter"></i>
        <span>Filtrar {{filters.selected|length > 0 ? '('~filters.selected|length~')':''}}</span>
    </button>
</div>
<div class="collection-sort">
    <form name="f-collection-sort" id="f-collection-sort" method="post" action="{{ url("current") }}">
        <select name="sort" onchange="$('form#f-collection-sort').submit()">
            <option {{ paginate.sort == "" ? "selected" : "" }} disabled>Ordenar por</option>
            <option {{ paginate.sort == "maxdiscount" ? "selected" : "" }} value="maxdiscount">Maior desconto</option>
            <option {{ paginate.sort == "pricelow" ? "selected" : "" }} value="pricelow">Menor Preço</option>
            <option {{ paginate.sort == "pricemax" ? "selected" : "" }} value="pricemax">Maior Preço</option>
            <option {{ paginate.sort == "new" ? "selected" : "" }} value="new">Lançamentos</option>
            <option {{ paginate.sort == "bestsellers" ? "selected" : "" }} value="bestsellers">Mais vendidos</option>
            <option {{ paginate.sort == "name" ? "selected" : "" }} value="name">Nome do produto</option>
        </select>
    </form>
</div>
{% if paginate.type == "grid" %}
<div class="collection-grid-column flex hide-on-small-and-down" align-items="center" justify-content="center">
    <a  class="flex {% if paginate.columns== 2 %}active{% endif %}" href="{{ url("current",{"grid":2}) }}" rel="nofollow">
        <i></i><i></i>
    </a>
    <a class="flex {% if paginate.columns== 3 %}active{% endif %}" href="{{ url("current",{"grid":3}) }}" rel="nofollow">
        <i></i><i></i><i></i>
    </a>
    <a class="flex {% if paginate.columns== 4 %}active{% endif %} hide-on-med-and-down" href="{{ url("current",{"grid":4}) }}" rel="nofollow">
        <i></i><i></i><i></i><i></i>
    </a>
</div>
{% endif %}
<div class="flex" align-items="center">
    <div class="collection-view-mode">
        <a title="Visualizar como Galeria" class="{% if paginate.type == "grid"%}active{% endif %}" href="{{ url("current",{"view":"grid"}) }}" rel="nofollow"><i class="far fa-th"></i></a>
        <a title="Visualizar como Listagem" class="{% if paginate.type == "list"%}active{% endif %}" href="{{ url("current",{"view":"list"}) }}" rel="nofollow"><i class="far fa-th-list"></i></a>
    </div>
    <div class="collection-limit hide-on-small-and-down">
        <form name="f-collection-per-page" id="f-collection-per-page" method="post" action="{{ url("current") }}">
            <select name="limit" onchange="$('form#f-collection-per-page').submit()">
                <option value="36" {% if paginate.per_page == 36 %}selected{% endif %}>36</option>
                <option value="48" {% if paginate.per_page == 48 %}selected{% endif %}>48</option>
                <option value="60" {% if paginate.per_page == 60 %}selected{% endif %}>60</option>
                <option value="72" {% if paginate.per_page == 72 %}selected{% endif %}>72</option>
                <option value="84" {% if paginate.per_page == 84 %}selected{% endif %}>84</option>
            </select>
        </form>
    </div>
</div>