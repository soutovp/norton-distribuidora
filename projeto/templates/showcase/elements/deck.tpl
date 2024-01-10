<style>
  .swipereffect {
    width: 350px;
    height: auto;
    margin: 0 auto;
  }
  .swipereffect.deckmySwiper .product-card-deck-title {
    height: 2.5rem;
    align-items: center;
    z-index: 1;
    background-color: var(--color-bg-60) !important;
  }
  .swipereffect.deckmySwiper .product-card-deck-title span {
    color: var(--cor-txt-nome-prto);
    max-height: 100%;
  }
  .card-deck.swiper {
    width: 100%;
    padding-top: 50px;
    padding-bottom: 50px;
  }
  .swipereffect.deckmySwiper .cards-foot {
    bottom: 0;
    background-color: var(--color-bg-60) !important;
  }
  .swipereffect.deckmySwiper .product-card-deck-price {
    margin-left: 5px;
  }
  .swipereffect.deckmySwiper .product-card-deck-price [data-element=price] .price {
    color: var(--cor-txt-prc-prto);
  }
  .swipereffect.deckmySwiper .installment-plan{
    display: none;
  }
  @media (max-width: 1000px){
    .swipereffect.deckmySwiper .product-link {
      height: 100%;
    }
  }
</style>
<div class="swipereffect deckmySwiper">
  <div class="swiper-wrapper">
    {% for product in element.products %}
    <div class="swiper-slide cards-effect ">
      {% include 'snippets/collection/product_card_deck.tpl' %}
    </div>
    {% endfor %}
  </div>
  <div class="swiper-button-next">
  </div>
  <div class="swiper-button-prev">
  </div>
</div>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js">
</script>
<script>
  var swiper = new Swiper(".deckmySwiper", {
    effect: "cards",
    loop: true,
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
      pauseOnMouseEnter: true,
    }
    ,
    grabCursor: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    }
    ,
  }
                         );
</script>
