<div class="collection-header template-cards flex" wrap="true" direction="row" align-items="center" justify-content="space-between">
  {% include 'snippets/collection-list-header.tpl' %}
</div>
<div class="collection-grid mode-{{ paginate.type?:"grid" }} flex" direction="row" wrap="true" columns="{{paginate.columns}}" gap="10" colums-list="{{ variables.cms_grade_produtos.cms_mobile_dual_col ? 2 : 1 }}">
  {% for product in products %}
  {% include 'snippets/collection/product-card.tpl' %}
  {% endfor %}
</div>
<div class="collection-paginate">
  {% set paginate = {total:paginate.total,current: paginate.current,main_url: paginate.url } %}
  {% include "snippets/paginate.tpl" %}
</div>