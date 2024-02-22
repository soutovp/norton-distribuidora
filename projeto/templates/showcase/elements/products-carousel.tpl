{% if element.products|length > 0 %}
<div class="element-container w-100" id="element-products-{{element.id}}" style="width: 90%; margin: auto;">
  {% if element.title is not empty %}
  <div class="title">
    <h2>{{element.title|raw}}</h2>
  </div>
  {% endif %}
  <div class="content custom-content">
    <div class="carousel-products-wrapper collection-grid mode-grid flex" direction="row" wrap="false"
         data-element="carousel-products"
         data-auto-play="true"
         data-loop="true"
         data-nav="{{element.nav?'true':'false'}}"
         data-dots="{{element.dots?'true':'false'}}"
         data-speed="1000"
         data-timeout="5000"
         data-items-mobile="{{ variables.cms_grade_produtos.cms_mobile_dual_col ? 1 : 1 }}"
         data-items="{{element.items}}"
         data-margin="15"
         followFinger="false"
         shortSwipes="false"
         threshold="100"
         >
      {% for product in element.products %}
      <div class="products-cards-item" data-element="carousel-products-item">
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
