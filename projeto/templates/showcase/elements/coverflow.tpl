{# TEMPLATE MAX COLUMNS #}
{% set maxColumns = 4 %}
{% if element.products|length > 0 %}
<style>
  .card-coverflow.swiper {
    width: 100%;
    padding-top: 50px;
    padding-bottom: 50px;
  }
  .coverflowSwiper .swiper-button-disabled.swiper-button-lock {
    display: flex;
    pointer-events: initial;
    cursor: pointer;
  }
  .card-coverflow .swiper-slide {
    background-position: center;
    background-size: cover;
    width: 26.875rem;
    height: auto;
    opacity: 0.6;
  }
  .card-coverflow .swiper-slide:not(.swiper-slide-active) a {
    pointer-events: none;
  }
  .card-coverflow .swiper-slide:not(.swiper-slide-active) a > .product-card-coverflow-title {
    display: none;
  }
  .product-card-coverflow {
    overflow: hidden;
  }
  .product-card-coverflow-title {
    background: var(--color-bg-60);
    color: var(--color-txt-80);
    height: 2.5rem;
    align-items: center;
    justify-content: center;
    z-index: 1;
  }
  .coverflow-foot .price {
    color: var(--color-txt-80);
  }
  .product-card-coverflow-title span {
    max-width: 70%;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    max-height: 100%;
  }
  .product-card-coverflow .discount-chip{
    width: 100%;

  }
  .product-card-coverflow .discount-chip span {
    padding: 0;
    height: 2.5rem;
    width: 2.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
  }
  .cover-quickview-button {
    z-index: 1;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    z-index: 1;
  }
  .card-coverflow .mode-grid .cover-quickview-button {
    opacity: 1;
  }
  .swiper-slide-active .storefront-cards:hover .button-quickview, .mode-grid .storefront-cards:hover .button-quickview {
    opacity: 0.8;
  }
  .cover-quickview-button .button-quickview {
    background: var(--cor-bg-bt-info);
    color: var(--cor-txt-bt-info);
    height: 3.438rem;
    width: 3.438rem;
    font-size: 1.500em;
    border-radius: 100%;
    -webkit-transition: all .3s ease-in;
    -moz-transition: all .3s ease-in;
    -ms-transition: all .3s ease-in;
    -o-transition: all .3s ease-in;
    transition: all .3s ease-in;
    opacity: 0;
  }
  .cover-quickview-button .button-quickview:hover {
    opacity: 1;
  }
  .cover-quickview-button .button-quickview:before  {
    border-radius: 100%;
  }
  .card-coverflow .swiper-slide-prev, .card-coverflow .swiper-slide-next {
    opacity: 0.8;
  }
  .card-coverflow .swiper-slide-active {
    opacity: 1 !important;
  }
  .card-coverflow .swiper-slide-visible:hover {
    opacity: 1;
  }
  .coverflow-foot {
    bottom: -50px;
    height: 50px;
    background-color: var(--color-bg-60);
    color: var(--color-txt-80);
    -webkit-transition: all .3s ease-in;
    -moz-transition: all .3s ease-in;
    -ms-transition: all .3s ease-in;
    -o-transition: all .3s ease-in;
    transition: all .3s ease-in;
  }
  .swiper-slide-active .product-card-coverflow:hover .coverflow-foot, .mode-grid .product-card-coverflow:hover .coverflow-foot {
    bottom: 0;
  }
  .product-card-coverflow-price .currentPrice {
    display: flex;
    flex-direction: column;
    padding: 0.313rem;
  }
  .product-card-coverflow-price .installment-plan {
    display: none;
  }
  .product-card-coverflow .prod-quantity-cart {
    display: none;
  }
  .product-card-coverflow-action .empty-block {
    height: 0;
  }
  .product-card-coverflow-action button.btn {
    height: 100%;
    opacity: 0.8;
    border-radius: 0;
    opacity: 1;
    font-size: 0.875em;
  }
  .product-card-coverflow-action button.btn:hover {
    opacity: 1;
  }
  @media (max-width: 1000px) {
    .swiper-slide-active .product-card-coverflow {
      overflow: initial;
      border-radius: 3px 3px 0 0;
      justify-content: inherit;
    }
    .product-card-coverflow-title {
      color: var(--cor-txt-nome-prto) !important;
      background: transparent;
    }
    .coverflow-foot .price {
      color: var(--cor-txt-prc-prto);
    }
    .card-coverflow .swiper-slide:not(.swiper-slide-active).product-card-coverflow-title {
      background: transparent;
    }
    .swiper-slide-active .product-card-coverflow-title {
      position: inherit;
    }
    .card-coverflow .swiper-slide-active .product-card-coverflow .cover-quickview-button {
      opacity: 1;
    }
    .product-card-coverflow .cover-quickview-button .button-quickview {
      height: 2.188rem;
      width: 2.188rem;
      font-size: 1em;
      opacity: 0.8;
    }
    .swiper-slide-active .product-card-coverflow .coverflow-foot, .card-coverflow .mode-grid .collection-grid-card .coverflow-foot {
      opacity: 1;
      position: unset;
    }
    .product-card-coverflow-action, .product-card-coverflow-title {
      margin: 5px;
      height: auto;
      position: initial;
    }
    .product-card-coverflow .product-card-coverflow-action .btn {
      padding: 5px;
      text-transform: capitalize !important;
      height: auto !important;
      border-radius: 3px;
    }
    .card-coverflow.swiper .swiper-pagination {
      margin-top: 15px;
    }
    .product-link {
      height: auto;
    }
    .card-coverflow .mode-grid .products-cards-item {
      width: calc(100% / 3) !important;
    }
  }
  .mode-grid .product-card-coverflow .discount-chip span {
    height: 1.85rem;
    width: 1.85rem;
    font-size: 0.875em;
  }
  @media (max-width: 600px) {
    .card-coverflow .swiper-slide {
      width: 12.5rem;
      height: 100%;
    }
    .product-card-coverflow-action {
      height: auto;
    }
    .product-card-coverflow .discount-chip span {
      height: auto;
      width: auto;
      font-size: 0.750em;
      padding: 3px;
    }
    .product-card-coverflow-title {
      font-size: 0.825em;
    }
    .card-coverflow .mode-grid .products-cards-item {
      width: 100% !important;
    }
    .card-coverflow .mode-grid .collection-grid-card .coverflow-foot {
      font-size: 0.875em;
    }
  }
</style>
{% if (element.type == 'products-carousel') %}
<!-- Swiper -->
<div class="card-coverflow swiper coverflowSwiper h-100">
  <div class="swiper-wrapper">
    {% for product in element.products %}
    <div class="swiper-slide" >
      {% include 'snippets/collection/product_card_cover.tpl' %}
    </div>
    {% endfor %}
  </div>
  <div class="swiper-button-next">
  </div>
  <div class="swiper-button-prev">
  </div>
  <div class="swiper-pagination">
  </div>
</div>
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js">
</script>
<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".coverflowSwiper", {
    effect: "coverflow",
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: "auto",
    loop: true,
    slideToClickedSlide: true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    }
    ,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    }
    ,
    coverflowEffect: {
      rotate: 50,
      stretch: 0,
      depth: 100,
      modifier: 1,
      slideShadows: true,
    }
    ,
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
  <div class="content card-coverflow w-100">
    <div class="collection-grid mode-grid flex" wrap="true" data-columns="{{columns}}" justify-content="center">
      {% set itemsCount = 0 %}
      {% for product in element.products %}
      {% set itemsCount = itemsCount + 1 %}
      {% if (itemsCount <= element.items) %}
      <div class="products-cards-item" data-element="gallery-products-item" style="width: calc(100% / {{columns}}); padding: 5px;">
        {% include 'snippets/collection/product_card_cover.tpl' %}
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
    const swiper = document.querySelector('#element-type-{{element.id}} .swiper').swiper;
                                          swiper.params.threshold = 5;
                                          swiper.update();
  }
  }
                   );
</script>
{% endif %}
{% endif %}
