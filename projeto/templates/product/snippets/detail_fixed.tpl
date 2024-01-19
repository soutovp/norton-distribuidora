<style>
  .detail-fixed-content {
    position: fixed;
    height: 100px;
    top: 0;
    left: 0;
    right: 0;
    background-color: var(--cor-bg-blcs-gp);
    z-index: -1;
    width: 100%;
    -webkit-box-shadow: 0px 0px 3px 3px rgb(0 0 0 / 3%);
    box-shadow: 0px 0px 3px 3px rgb(0 0 0 / 3%);
    opacity: 0;
    transition: opacity ease-out 500ms;
    padding: 5px;
  }
  .detail-fixed-content .container-detail {
    max-width: 1300px;
    margin: auto;
  }
  .buy-detail-fixed, .image-detail-fixed {
    max-width: 50%;
  }
  .detail-fixed-content.show-detail{
    opacity: 1;
    z-index: 9;
  }
  .container-detail {
    justify-content: space-evenly;
  }
  /* Countdown-detail-fixed */
  .detail-fixed-content .countdown {
    position: inherit;
    width: 90%;
    margin: 0 auto;
  }
  /* End-countdown-detail-fixed */
  /* Price-detail-fixed */
  .name-detail-fixed {
    color: var(--cor-txt-nome-prto);
    font-size: 1em;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    max-height: 50px;
    max-width: 300px;
  }
  .price-detail-fixed .currentPrice {
    font-size: 50%;
  }
  .price-detail-fixed .currentPrice [data-element=sale-price].price {
    font-size: 160%;
  }
  .buy-detail-fixed, .image-detail-fixed {
    gap: 25px;
  }
  .detail-fixed-content .product-buttons-action .btn-buy button.btn-primary {
    width: 300px;
    height: 55px;
  }
  @media (max-width: 1200px){
    .detail-fixed-content .time-left {
      font-size: 75%;
    }
    .buy-detail-fixed, .image-detail-fixed {
      gap: 15px;
    }
    .price-detail-fixed .currentPrice {
      font-size: 70%;
    }
    .detail-fixed-content .buy-detail-fixed button {
      width: auto;
      font-size: 90%;
      padding: 5px 10px;
    }
    .container-detail {
      justify-content: space-between;
    }
  }
  @media (max-width: 1000px) {
    .image-detail-fixed {
      max-width: 30%;
    }
    .detail-fixed-content .countdown {
      border: none;
    }
    .countdown-detail-fixed .time-icon {
      display: none;
    }
    .countdown-detail-fixed .countdown .time-left label {
      padding: 2px;
      width: auto;
    }
    .buy-detail-fixed {
      order: 3;
      max-width: 60%;
    }
    .detail-fixed-content .product-buttons-action .btn-buy button.btn-primary {
      width: auto;
      height: auto;
      padding: 10px 15px;
    }
  }
  @media (max-width: 768px) {
    .countdown-detail-fixed {
      order: 1;
      width: 100%;
    }
    .price-detail-fixed .currentPrice {
      font-size: 65%;
      max-width: 120px;
    }
    .name-detail-fixed {
      font-size: 80%;
    }
    .detail-fixed-content.show-detail {
      bottom: 0;
      top: unset;
      height: 110px;
    }
    .price-detail-fixed {
      display: none;
    }
    .image-detail-fixed img {
      max-width: 50px;
    }
    .container-detail {
      gap: 5px 0;
    }
    .image-detail-fixed img {
      max-width: 50px;
    }
    .image-detail-fixed {
      max-width: 60%;
      gap: 5px;
      order: 2;
    }
  }
</style>
<div class="detail-fixed-content">
  <div class="container-detail flex h-100" align-items="center" wrap="true" justify-content="space-between">
    <div class="image-detail-fixed flex h-100" align-items="center">
      <img class="h-100" alt="{{ product.name|raw }}" title="{{ product.name|raw }}" src="{{ product.gallery.images[0].source }}"/>
      <div class="name-detail-fixed">
        <b>{{ product.name|raw }}</b>
      </div>
    </div>
    {% if product.price.count_down is defined %}
    <div class="countdown-detail-fixed"> 
      {% include 'product/snippets/count_down.tpl' %}
    </div>
    {% endif %}
    <div class="buy-detail-fixed flex" align-items="center">
      <div class="price-detail-fixed">
        <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="product-values">
          {% if product.stock > 0 %}
          <link itemprop="availability" href="http://schema.org/InStock" />
          {% else %}
          <link itemprop="availability" href="http://schema.org/OutOfStock" />
          {% endif %}
          <link itemprop="itemCondition" href="http://schema.org/NewCondition" />
          <meta itemprop="url" content="{{ product.url }}" />
          <meta itemprop="priceValidUntil" content="{{ "now"|date_modify("+10 day")|date("Y-m-d") }}" />
          <meta itemprop="priceCurrency" content="{{ currency.code  }}" />
          <meta itemprop="price" content="{{ product.price.sale }}" />
          <div class="currentPrice" data-element="price">
            {% include 'product/snippets/price.tpl' %}
          </div>
        </div>
      </div>
      {% if product.stock > 0 %}
      <div class="product-buttons-action collection-grid mode-grid flex" align-items="center" wrap="true" gap="20">
        <a data-action="productInfo.buy" data-type="buttonAction" class="btn-buy" data-format-result="productInfo.formatBuyResult">
          <button alt="Comprar" type="button" class="btn btn-primary button-style-primary btn-lg bt-buy" title="Comprar">
            <span>
              <i class="fa-duotone fa-cart-circle-plus">
              </i> Comprar
            </span>
          </button>
        </a>
      </div>
      {% endif %}
    </div>
  </div>
</div>
<script>
  $(window).scroll(function () {
    let = btnBuyPos = $(".product-details-content .product-buttons-action .bt-buy").eq(0).offset().top;
    if ($(this).scrollTop() > (btnBuyPos - 35) && (btnBuyPos > 0)) {
      $(".detail-fixed-content").addClass("show-detail");
    }
    else {
      $(".detail-fixed-content").removeClass("show-detail");
    }
  }
                  );
</script>
