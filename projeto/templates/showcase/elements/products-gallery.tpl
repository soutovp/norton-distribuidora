{% if element.products|length > 0 %}
<div class="element-container w-100" id="element-products-{{element.id}}">
  {% if element.title is not empty %}
  <div class="title">
    <h2>{{element.title|raw}}</h2>
  </div>
  {% endif %}
  <div class="content custom-content w-100">
    <div class="carousel-products-wrapper collection-grid mode-grid"
         data-element="gallery-products"
         data-dots="{{element.paginate?'true':'false'}}"
         data-speed="1000"
         data-rows="{{element.rows}}"
         data-columns="{{element.columns}}"
         data-items-mobile="{{ variables.cms_grade_produtos.cms_mobile_dual_col ? 2 : 1 }}"
         data-margin="15"
         >
      {% for product in element.products %}
      <div class="products-cards-item" data-element="gallery-products-item" style="height: calc((100% - 30px) / {{element.rows}});">
        {% include 'snippets/collection/product-card.tpl' %}
      </div>
      {% endfor %}
    </div>
  </div>
</div>
<script>
  $(document).ready(function () {
    const swiper = document.querySelector('#element-products-{{element.id}} .swiper').swiper;
                                          swiper.params.threshold = 5;
                                          swiper.update();
  }
                   );
</script>
{% endif %}
