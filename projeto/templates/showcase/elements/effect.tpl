<style>
  .swiper.effectmySwiper .product-card-effect-title {
    height: 2.5rem;
    align-items: center;
    z-index: 1;
    background-color: var(--color-bg-60) !important;
  }
  .swiper.effectmySwiper .product-card-effect-title span {
    color: var(--cor-txt-nome-prto);
    max-height: 100%;
  }
  .product-card-cards-action form {
    gap: 5px;
  }
  .swiper.effectmySwiper .cards-foot {
    background-color: var(--color-bg-60) !important;
  }
  .swiper.effectmySwiper .product-card-effect-price {
    margin-left: 5px;
  }
  .swiper.effectmySwiper .product-card-effect-price [data-element=price] .price {
    color: var(--cor-txt-prc-prto);
  }
  .swiper.effectmySwiper .installment-plan{
    display: none;
  }
  #menu .swiper.effectmySwiper {
    width: 26.25rem;
}
  @media (max-width: 1000px){
    .swiper.effectmySwiper .product-link {
      height: 100%;
    }
  }
</style>
<div class="swiper effectmySwiper">
  <div class="swiper-wrapper">
    {% for product in element.products %}
    <div class="swiper-slide">
      {% include 'snippets/collection/product_card_effect.tpl' %}
    </div>
    {% endfor %}
  </div>
  <div class="swiper-button-next">
  </div>
  <div class="swiper-button-prev">
  </div>
</div>
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js">
</script>
<script>
  var swiper = new Swiper(".effectmySwiper", {
    loop: true,
    grabCursor: true,
    effect: "creative",
     autoplay: {
      delay: 3000,
      disableOnInteraction: false,
      pauseOnMouseEnter: true,
    }
    ,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    }
    ,
    creativeEffect: {
      prev: {
        shadow: true,
        translate: [0, 0, -400],
      }
      ,
      next: {
        translate: ["100%", 0, 0],
      }
      ,
    }
    ,
  }
                         );
</script>
