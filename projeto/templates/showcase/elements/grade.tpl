{% if (element.type == 'products-carousel') %}
{% set itemLimit = 0 %}
{% set itemColumns = element.items %}
{% elseif (element.type == 'products-gallery') %}
{% set itemLimit = element.items %}
{% set itemColumns = element.columns %}
{% endif %}
{% if element.products|length > 0 %}
<div class="element-container element-product-card-grid w-100" id="element-products-{{element.id}}">
  {% if element.title is not empty %}
  <div class="title">
    <h2>{{element.title|raw}}</h2>
  </div>
  {% endif %}
  <div class="content w-100">
    <div class="collection-grid mode-grid flex" justify-content="center" wrap="true" data-columns="{{itemColumns}}">
      {% set itemsCount = 0 %}
      {% for product in element.products %}
      {% set itemsCount = itemsCount + 1 %}
      {% if (itemLimit == 0 or itemsCount <= itemLimit) %}
      <div class="products-cards-item flex-mobile" width="{{ variables.cms_grade_produtos.cms_mobile_dual_col ? 6 : 12 }}" data-element="gallery-products-item" style="width: calc(100% / {{itemColumns}}); padding: 5px;">
        {% include 'snippets/collection/product-card.tpl' %}
      </div>      
      {% endif %}
      {% endfor %}
    </div>
  </div>
</div>
{% endif %}
