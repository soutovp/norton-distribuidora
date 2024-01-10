<style>
  .recommendations-addcart {
    padding: 0 15px;
  }
  .recommendations-addcart .swiper-button-next:after, .recommendations-addcart .swiper-button-prev:after {
    font-size: 100%;
  }
  .recommendations-addcart .swiper-button-next, .recommendations-addcart .swiper-button-prev {
    top: 40%;
    background: #f8f8f8;
    border: 1px solid #e1e1e1;
    border-radius: 100%;
    font-size: 1.3em;
    height: 46px;
    width: 46px;
  }
  .recommendations-addcart .swiper-button-prev {
    left: 0px;
  }
  .recommendations-addcart .swiper-button-next {
    right: 0px;
  }
  section.recommendations-addcart div.title {
    text-transform: uppercase;
    letter-spacing: 0.025em;
    border-top: 2px solid var(--color-txt-20);
    display: flex;
    padding: 20px 0 0;
    max-width: 98%;
    margin: auto;
  }
  section.recommendations-addcart div.title h2 {
    color: var(--color-txt-80);
    text-align: center;
    padding: 0 15px 15px;
    font-size: 1.125em;
  }
  .recommendations-addcart .product-card .product-card-action button.btn-primary {
    min-height: 35px;
  }
  .recommendations-addcart .product-card .product-card-action input.quantitySelect {
    display:none;
  }
  .recommendations-addcart .card-body, .foot-card {
    padding: 5px 5px 0;
    font-size: 75%;
  }
  .recommendations-addcart .countdown .time-text, .recommendations-addcart .countdown .time-left {
    height: auto;
    min-height: unset;
    font-size: 80%;
  }
  .product-link {
    -webkit-transition: all .3s linear;
    -moz-transition: all .3s linear;
    -ms-transition: all .3s linear;
    -o-transition: all .3s linear;
    transition: all .3s linear;
  }
  .product-card figure img.second-image-thumbnail {
    position: absolute;
    bottom: 0;
    display: flex !important;
    -webkit-opacity: 0;
    -moz-opacity: 0;
    -ms-opacity: 0;
    -o-opacity: 0;
    opacity: 0;
    visibility: hidden;
    -webkit-transform: translateX(-100%);
    -ms-transform: translateX(-100%);
    transform: translateX(-100%);
    -webkit-transition: all .35s ease;
    -moz-transition: all .35s ease;
    -ms-transition: all .35s ease;
    -o-transition: all .35s ease;
    transition: all .35s ease;
  }
  .product-card figure:hover img.second-image-thumbnail {
    -webkit-opacity: 1;
    -moz-opacity: 1;
    -ms-opacity: 1;
    -o-opacity: 1;
    opacity: 1;
    position: absolute;
    top: 0;
    visibility: initial;
    -webkit-transform: translateX(0%);
    -ms-transform: translateX(0%);
    transform: translateX(0%);
  }
  .product-card .countdown {
    opacity: 1;
    transition: opacity 0.3s;
    -webkit-transition: opacity 0.3s;
  }
  .product-card:hover .countdown {
    opacity: 0;
  }
  .recommendations-addcart .time-icon {
    display: none;
  }
  .recommendations-addcart .discount-chip {
    font-size: 65%;
  }
  @media (max-width: 600px) {
    section.recommendations-addcart div.title h2 {
      position: relative;
      font-size: 75%;
    }
    .recommendations-addcart ul.product-card-marks, .recommendations-addcart .product-card-rating-buttons, .recommendations-addcart .installment-plan {
      display: none;
    }
    .recommendations-addcart .card-body, .foot-card {
      padding: 0 5px;
    }
    .recommendations-addcart .countdown.countdown-product .time-icon {
      display: none;
    }
    .recommendations-addcart .countdown.countdown-product {
      bottom: 0;
      font-size: 60%;
    }
  }
</style>
<section class="recommendations-addcart">
  <div class="title flex position-relative w-100" align-items="center" justify-content="center">
    <h2>Clientes que compraram itens em seu carrinho também compraram
    </h2>
  </div>
  <div class="swiper mySwiper">
    <div class="swiper-wrapper">
      {% for product in linkedProducts %}
      {% if product.stock > 0 %}
      <div class="swiper-slide addcart-products-item">
        {{ include('snippets/collection/product-card.tpl', {cardType:'linked'})}}
      </div>
      {% endif %}
      {% endfor %}
    </div>
    <div class="swiper-button-next">
    </div>
    <div class="swiper-button-prev">
    </div>
    <div class="swiper-pagination">
    </div>
  </div>
</section>
<script>
  var swiper = new Swiper(".recommendations-addcart .mySwiper", {
    slidesPerView: 2,
    spaceBetween: 20,
    loop: true,
    autoplay: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    }
    ,
    pagination: {
      el: ".swiper-pagination",
    }
    ,
    breakpoints: {
      640: {
        slidesPerView: 2,
      }
      ,
      768: {
        slidesPerView: 3,
      }
      ,
      1024: {
        slidesPerView: 4,
      }
      ,
    }
    ,
  }
                         );
</script>