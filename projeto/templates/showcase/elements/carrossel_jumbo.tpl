{% if element.products|length > 0 %}
<style>
  /*-- CSS Jumbo --*/
  .element-container{
    width: 90%;
    margin: auto;
  }
  .element-jumbo {
    max-width: 100%;
    margin: 30px auto 100px;
  }
  .jumbo-button-quickview {
    z-index: 1;
    width: 70px;
    height: 70px !important;
    font-size: 85%;
    border-radius: 100% !important;
    opacity: 0;
    -webkit-transition: all .3s;
    -moz-transition: all .3s;
    -ms-transition: all .3s;
    -o-transition: all .3s;
    transition: all .3s;
    transform: scale(.8);
    position: absolute !important;
  }
  .jumbo-links-images:hover .jumbo-button-quickview {
    opacity: 1;
    -ms-transform: scale(1);
    transform: scale(1);
  }
  .jumbo-links-images .jumbo-button-quickview:before {
    border-radius: 100%;
  }
  .jumbo-wishlist {
    top: 5px;
    z-index: 1;
    right: 5px;
  }
  .jumbo-wishlist button.btn-wishlist {
    padding: 0;
    appearance: none;
    background: none;
    border: none;
    font-size: 1.250em;
    cursor: pointer;
  }
  .element-jumbo .title {
    margin: 25px 0 100px;
  }
  .jumbo .product-card-marks {
    margin-top: 10px;
    display: flex;
    flex-wrap: wrap;
  }
  .jumbo .product-card-marks li {
    height: min-content;
  }
  .content.jumbo {
    max-width: 1100px;
    overflow: inherit;
  }
  .jumbo .mark-free-shipping, .jumbo .immediate-delivery {
    background-color: #555;
  }
  .showcase-element.element-products-carousel{
    overflow: hidden;
  }
  .product-card-jumbo .card-body, .product-card-jumbo .foot-card {
    padding: 0;
  }
  figure.gallery-jumbo {
    height: 100%;
    overflow: hidden;
  }
  .product-card-jumbo span.discount-value {
    padding: 15px;
    font-weight: bold;
    background-color: var(--cor-bg-tag-ofer, #61b32b);
    color: #fff;
    border-radius: 0px 0 3px 0px;
  }
  .product-card-jumbo span.number-in-stock {
    margin-top: 5px !important;
    display: block;
    font-weight: 300 !important;
    font-size: 115% !important;
  }
  .jumbo .collection-grid .product-card-jumbo figure img.first-image-thumbnail {
    opacity: 1;
    max-width: 100%;
    transition: all .5s ease;
    position: absolute;
    top: 0;
  }
  .jumbo .swiper-slide:not(.swiper-slide-active) .product-card-jumbo figure img.first-image-thumbnail {
    opacity: 0.5;
    pointer-events: none;
  }
  .gallery-jumbo .discount-chip {
    top: 0;
    font-size: 100%;
    left: 0;
  }
  .jumbo .swiper-slide:not(.swiper-slide-active) .product-card-jumbo {
    margin-top: 60px;
    opacity: 0.6;
    pointer-events: none;
  }
  .jumbo .swiper-slide:not(.swiper-slide-active) .product-card-jumbo .foot-buttons {
    opacity: 0;
  }
  .jumbo .product-card {
    overflow: inherit;
  }
  .jumbo .product-card-information-add {
    -webkit-transition: all .3s linear;
    -moz-transition: all .3s linear;
    -ms-transition: all .3s linear;
    -o-transition: all .3s linear;
    transition: all .3s linear;
  }
  .jumbo .foot-card {
    flex-direction: column;
    padding: 30px;
    width: 40%;
    justify-content: space-between;
  }
  .jumbo .foot-card .product-card-price .currentPrice {
    align-items: baseline;
    display: flex;
    margin: 0 auto;
    width: 100%;
    gap: 10px;
    flex-wrap: wrap;
  }
  .jumbo .foot-card .product-card-price [data-element="sale-price"] {
    font-size: 125%;
  }
  .jumbo .foot-card .product-card-price .price.slash {
    font-size: 100%;
    color: var(--cor-txt-prc-prto);
    opacity: 0.6;
    margin: 0;
  }
  .jumbo .foot-card .product-card-title {
    color: var(--cor-txt-nome-prto);
    font-weight: 700;
    font-size: 160%;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    line-height: 1.52947;
    font-weight: 500;
  }
  .jumbo .card-body .product-card-title a {
    min-height: unset;
    max-height: unset;
    margin-bottom: 0;
    overflow: inherit;
    display: -webkit-box;
    -webkit-line-clamp: unset;
    -webkit-box-orient: vertical;
    text-overflow: unset;
    line-height: unset;
  }
  .jumbo .card-body .product-card-title a p {
    font-size: 50%;
    font-weight: 400;
    letter-spacing: 0.2px;
    margin-bottom: 10px;
  }
  .jumbo .product-card-price .installment-plan {
    width: 100%;
    text-align: initial;
  }
  .jumbo .button-quickview {
    border-radius: 100%;
    height: 60px;
    width: 60px;
    font-size: 130%;
    opacity: 0;
    z-index: 1;
  }
  .jumbo .button-quickview:before {
    border-radius: 100% !important;
  }
  .jumbo-links-images:hover .button-quickview {
    opacity: 0.9;
  }
  .product-card-jumbo .card-body .stars {
    justify-content: flex-start;
  }
  .see-btn-jumbo {
    display: flex;
    gap: 20px;
    align-items: flex-end;
  }
  .showcase-grup .jumbo .swiper-button-next, .showcase-grup .jumbo .swiper-button-prev {
    width: 60px;
    height: 60px;
    top: 40%;
  }
  .showcase-grup .jumbo .swiper-button-next:after, .showcase-grup .jumbo .swiper-button-prev:after {
    font-size: 1.250em;
  }
  .element-jumbo .card-countdown {
    left: 50%;
    top: 80%;
    transform: translate(-50%, -50%);
    position: absolute;
  }
  .product-card-jumbo .card-body .stars {
    justify-content: center;
  }
  @media (max-width: 1000px) {
    .content.jumbo {
      height: auto;
      overflow: hidden;
    }
    .jumbo .swiper-slide-active {
      width: 100% !important;
    }
    .jumbo .foot-card.flex {
      gap: 5px;
      padding: 15px;
      align-items: center;
    }
    .jumbo .collection-grid .product-card-jumbo figure img.first-image-thumbnail {
      position: inherit;
    }
    .element-jumbo {
      margin: 0;
    }
  }
  @media (max-width: 768px){
    .jumbo .swiper-slide:not(.swiper-slide-active) .product-card-jumbo, .jumbo .swiper-slide:not(.swiper-slide-active), .jumbo .swiper-slide:not(.swiper-slide-active) .product-card-jumbo figure img.first-image-thumbnail, .jumbo .collection-grid .product-card-jumbo figure img.first-image-thumbnail {
      margin-top: 0px;
    }
    .jumbo .foot-card {
      width: 100%;
    }
    .jumbo .product-card-marks {
      justify-content: center;
    }
    .jumbo .collection-grid .product-card-jumbo {
      flex-direction: column;
    }
    .jumbo .collection-grid .product-card-jumbo figure img.first-image-thumbnail{
      position: relative;
    }
    .element-jumbo .title {
      margin: 15px 0;
    }
    .jumbo .foot-card .product-card-title {
      font-size: 110%;
    }
    .jumbo .card-body .product-card-title a {
      text-align: center;
    }
    .jumbo .foot-card p {
      font-size: 80%;
    }
    .product-card-jumbo .product-card-rating-buttons {
    text-align: center;
    justify-content: center;
}
    .jumbo .product-card-action button.bt-buy {
      min-height: 40px;
      font-size: 100%;
    }
    .jumbo .foot-card .product-card-price .currentPrice, .jumbo .product-card-price .installment-plan {
      justify-content: center;
      text-align: center;
      gap: 5px;
    }
  }
  @media (max-width: 600px){
    .jumbo .button-quickview, .see-btn-jumbo .wishlist button {
      font-size: 100%;
      height: 40px;
      width: 40px;
    }
    .showcase-grup .jumbo .swiper-button-next, .showcase-grup .jumbo .swiper-button-prev {
      width: 40px;
      height: 40px;
      top: 45%;
    }
  }
</style>
<div class="element-container element-jumbo" id="element-products-{{element.id}}">
  {% if element.title is not empty %}
  <div class="title">
    <h2>{{element.title|raw}}</h2>
  </div>
  {% endif %}
  <div class="content jumbo fadeIn animated faster">
    <div class="carousel-products-wrapper collection-grid mode-grid flex" direction="row" wrap="false"
         data-element="carousel-products"
         data-auto-play="true"
         data-loop="true"
         data-nav="{{element.nav?'true':'false'}}"
         data-dots="{{element.dots?'true':'false'}}"
         data-speed="1000"
         data-timeout="5000"
         data-items-mobile="1"
         data-items="1"
         data-margin="30"
         >
      {% for product in element.products %}
      <div data-element="carousel-products-item">
        {% include 'snippets/collection/product_card_jumbo.tpl' %}
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
</script>{% endif %}
