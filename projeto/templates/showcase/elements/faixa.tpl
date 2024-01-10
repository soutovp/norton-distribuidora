{# TEMPLATE MAX COLUMNS #}
{% set maxColumns = 4 %}
{% if element.products|length > 0 %}
{% if (element.type == 'products-carousel') %}
<div class="element-container w-100" id="element-products-{{element.id}}">
  {% if element.title is not empty %}
  <div class="title">
    <h2>{{element.title|raw}}</h2>
  </div>
  {% endif %}
  <div class="content strip">
    <div class="carousel-products-wrapper collection-grid mode-grid flex" direction="row" wrap="false"
         data-element="carousel-products"
         data-auto-play="false"
         data-loop="true"
         data-nav="{{element.nav?'true':'false'}}"
         data-dots="{{element.dots?'true':'false'}}"
         data-speed="1000"
         data-timeout="5000"
         data-items-mobile="1"
         data-items="{{element.items}}"
         data-margin="15"
         >
      {% for product in element.products %}
      <div class="products-cards-item" data-element="carousel-products-item">
        {% include 'snippets/collection/product_card_list.tpl' %}
      </div>
      {% endfor %}
    </div>
  </div>
</div>
<script>
  $(document).ready(function () {
    function updateSwiper(){
      let dataItems  = {{element.items}};
      let itemsLimit = {{maxColumns}};
      if ($(window).width() < 1800) itemsLimit = 3;
      if ($(window).width() < 1300) itemsLimit = 2;
      if ($(window).width() < 1000) itemsLimit = 1;
      dataItems = (dataItems > itemsLimit ? itemsLimit : dataItems);
      const swiper = document.querySelector('#element-products-{{element.id}} .swiper').swiper;
                                            if (dataItems != swiper.params.slidesPerView){
        swiper.params.slidesPerView = dataItems;
        swiper.update();
      }
    }
    $(window).resize(function(){
      updateSwiper();
    }
                    );
    updateSwiper();
    const swiper = document.querySelector('#element-products-{{element.id}} .swiper').swiper;
                                          swiper.params.threshold = 5;
                                          swiper.update();
  }
                   );
</script>
{% elseif (element.type == 'products-gallery') %}
{% set columns = element.columns < maxColumns ? element.columns : maxColumns %}
<div class="element-container element-product-card-grid w-100" id="element-products-{{element.id}}">
  {% if element.title is not empty %}
  <div class="title">
    <h2>{{element.title|raw}}</h2>
  </div>
  {% endif %}
  <div class="content content-strip w-100">
    <div class="collection-grid mode-grid flex" wrap="true" data-columns="{{columns}}" justify-content="center">
      {% set itemsCount = 0 %}
      {% for product in element.products %}
      {% set itemsCount = itemsCount + 1 %}
      {% if (itemsCount <= element.items) %}
      <div class="products-cards-item" width="{{ variables.cms_grade_produtos.cms_mobile_dual_col ? 6 : 12 }}" data-element="gallery-products-item" style="width: calc(100% / {{columns}}); padding: 5px;">
        {% include 'snippets/collection/product_card_list.tpl' %}
      </div>
      {% endif %}
      {% endfor %}
    </div>
  </div>
</div>
<script>
  $(document).ready(function () {
    function updateGrid(){
      let itemsCount = {{element.columns}};
      let itemsLimit = {{maxColumns}};
      if ($(window).width() < 1800) itemsLimit = 3;
      if ($(window).width() < 1300) itemsLimit = 2;
      if ($(window).width() < 1000) itemsLimit = 1;
      itemsCount = (itemsCount > itemsLimit ? itemsLimit : itemsCount);
      console.log("itemsCount = " + itemsCount);
      console.log("itemsLimit = " + itemsLimit);
      $(".element-41 .products-cards-item").css({
        width: 'calc(100% / '+itemsCount+')', padding: '5px'}
                                               );
    }
    $(window).resize(function(){
      updateGrid();
    }
                    );
    updateGrid();
  }
                   );
</script>
{% endif %}
{% endif %}
