{{ banners.getByTag(['produto','superior'],'and') }}
<style>
  /*Descri��o lista*/
  .product-description-types .description_list h2 {
    margin: 0;
    font-weight: 600;
    font-size: 1rem;
    color: var(--color-txt-80);
  }
  .product-description-types .description_list .tabs {
    box-shadow: none;
  }
  .product-description-types .description_list .tab-label {
    font-weight: 400;
    color: var(--color-txt-80);
    font-size: 1rem;
  }
  .product-description-types .description_list input:checked ~ .tab-content {
    white-space: normal;
    line-height: 1.58;
    color: var(--color-txt-60);
  }
  /*FIM Descri��o lista*/
  /*Descri��o Abas*/
  .product-description-types .description_tabs {
    display: -webkit-flex;
    display: flex;
    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
    gap: 0 3px;
  }
  .product-description-types .description_tabs label {
    color: var(--color-txt-80);
    font-size: 0.875rem;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    line-height: 1.52947;
    font-weight: 400;
    max-height: 2.188rem;
    max-width: 5rem;
    padding: 0.313rem;
    border-radius: 0;
    white-space: inherit;
    word-break: break-word;
  }
  .product-description-types .description_tabs div.tab-content {
    padding: 0.938rem 0.313rem;
    font-size: 0.875rem;
    color: var(--color-txt-80);
    line-height: 1.52947;
  }
  @media (max-width: 1200px) {
    .product-description-types .description_tabs {
      justify-content: center;
    }
  }
  /*FIM Descri��o lista Abas*/
  /*Op��es de frete*/
  section.product-page ul.shipping-quotes li.destination {
    border: 1px solid var(--color-txt-20);
  }
  section.product-page ul.shipping-quotes li.destination div.city_state {
    font-size: 0.875rem;
    color: var(--color-txt-80);
  }
  /*FIM op��es de frete*/
  /*Op��es de pagamento*/
  .opened-payment.show-payments {
    max-width: 400px;
  }
  div#box-product-payment-methods ul.tablist li.accordion-group div.accordion-heading .accordion-toggle {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  div#box-product-payment-methods ul.tablist li.accordion-group div.accordion-heading .accordion-toggle .label-right {
    max-width: 140px;
    font-size: 0.875rem;
  }
  /*FIM Op��es de pagamento*/
  /*Countdown detalhes do produto*/
  .procuct-values-action .countdown-product {
    position: inherit;
  }
  .procuct-values-action .countdown-product .count-text {
    min-width: 65px;
    padding: 5px;
    font-size: 0.875rem;
    border: 1px solid var(--color-txt-20);
    font-weight: 300;
  }
  .procuct-values-action .countdown-product .count-text span, .product-page .detail-fixed-content .countdown-product .count-text span {
    font-size: 1rem;
    font-weight: 500;
  }
  .procuct-values-action .countdown-product .time-text {
    gap: 10px;
  }
  .product-page .detail-fixed-content .countdown-product .count-text {
    min-width: 65px;
    padding: 5px;
    font-size: 0.875rem;
    border: 1px solid var(--cor-txt-cabecalho);
    font-weight: 300;
  }
  /*FIM Countdown detalhes do produto*/
  .product-details-content {
    padding: 15px 0;
  }
  .name-product-title {
    font-size: 2.125rem;
    margin-bottom: 10px;
    color: var(--color-txt-80);
  }
  .description-small-product {
    max-width: 880px;
    margin: auto;
    padding: 0 5px;
    color: var(--color-txt-60);
    font-size: 1rem;
    line-height: 1.58;
  }
  .procuct-detail .product-description-types p {
    text-align: initial;
    padding: 0;
    line-height: 1.58;
  }
  .gallery-thumbs {
    width: 100%;
    overflow: hidden;
    margin: auto;
  }
  .product-gallery-carousel {
    gap: 10px;
  }
  .gallery-thumbs .swiper-slide {
    cursor: pointer;
    display: flex;
  }
  .gallery-thumbs .swiper-slide img {
    margin: auto;
    padding: 3px;
    border: 1px solid var(--color-txt-80);
    border-radius: 3px;
    max-width: 100px;
    object-fit: cover;
    opacity: 0.4;
    transition: opacity .25s ease-in-out;
    -moz-transition: opacity .25s ease-in-out;
    -webkit-transition: opacity .25s ease-in-out;
  }
  .gallery-thumbs .swiper-slide img:hover, .gallery-thumbs .swiper-slide-active img {
    opacity: 1;
  }
  .gallery-top {
    width: 100%;
    height: auto;
    overflow: hidden;
    transition: opacity seconds;
  }
  .gallery-top .swiper-button-next, .gallery-top .swiper-button-prev {
    background: none;
    z-index: 8;
  }
  .gallery-top .swiper-slide {
    display: flex;
    align-items: flex-start;
    justify-content: center;
    box-sizing: border-box;
    transition: opacity .25s ease-in-out;
    -moz-transition: opacity .25s ease-in-out;
    -webkit-transition: opacity .25s ease-in-out;
  }
  .gallery-top .swiper-button-next:after, .gallery-top .swiper-button-prev:after {
    font-size: 2em;
  }
  .product-gallery-carouse img {
    transition: opacity .25s ease-in-out;
    -moz-transition: opacity .25s ease-in-out;
    -webkit-transition: opacity .25s ease-in-out;
  }
  .gallery-thumbs .video img {
    display: flex;
    height: auto;
  }
  .play-video-thumbs {
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
  }
  .gallery-thumbs iframe {
    display: none;
  }
  .product-gallery .wishlist {
    position: absolute;
    right: 0;
    z-index: 2;
  }
  .product-gallery .wishlist button.btn-wishlist {
    background: none;
    border: none;
    color: red;
    font-size: 1.5em;
  }
  .product-gallery ul.product-marks {
    gap: 5px;
    position: absolute;
    bottom: 0;
    z-index: 7;
  }
  .procuct-detail ul.product-marks li {
    padding: 3px;
    min-width: 100px;
    font-size: 0.875rem;
    color: var(--color-txt-80);
    border: 1px solid var(--color-txt-80);
  }
  .mark-new {
    border: 1px solid var(--cor-bg-tag-lanc, #333);
  }
  .mark-hotdeal {
    border: 1px solid var(--cor-bg-tag-ofer, #333);
  }
  .mark-exclusive {
    border: 1px solid var(--cor-bg-tag-exclus, #333);
  }
  .jssocials-share a {
    border-radius: 3px;
  }
  .gallery-top .fixed-image .swiper-button-next, .gallery-top .fixed-image .swiper-button-prev {
    display: none;
  }
  @media (max-width: 1250px) {
    .product-gallery-carousel {
      flex-direction: column;
      gap: 15px;
      height: auto;
    }
    .gallery-top {
      order: 1;
      width: 100%;
    }
    .gallery-thumbs {
      order: 2;
    }
    .gallery-thumbs .swiper-slide {
      align-items: center;
      min-height: auto;
    }
  }
  /*--INFO PRODUTO--*/
  .product-attributes ul.attributes-combinations>li>div {
    text-align: center;
    margin: 0;
    width: 100%;
    color: #666;
  }
  .product-custom-fields .campo_texto {
    width: 100%;
  }
  .product-information .produto_fabricante {
    gap: 10px;
    margin-top: 10px;
  }
  .product-information li, .product-information li a {
    color: var(--color-txt-60);
    font-size: 1rem;
  }
  .product-information li b {
    color: var(--color-txt-80);
  }
  .product-information .produto_fabricante img {
    width: auto;
    height: 50px;
  }
  section.product-page .product-custom-fields li {
    margin: 5px 0 30px;
    position: relative;
    text-align: center;
  }
  ul.product-custom-fields .formError {
    left: unset !important;
  }
  .product-rating {
    gap: 5px;
    color: #ffb503;
  }
  .procuct-detail .mark-free-shipping, .procuct-detail .immediate-delivery {
    padding: 3px;
    min-width: 100px;
    font-size: 0.875rem;
    color: var(--color-txt-80);
    border: 1px solid var(--color-txt-80);
    text-align: center;
    background: none;
  }
  .procuct-detail .immediate-delivery a {
    color: var(--color-txt-80);
  }
  .product-information li + li {
    margin-top: 5px;
  }
  .procuct-detail .product-rating {
    align-items: flex-end;
    font-size: 0.875rem;
  }
  .product-rating .product-rating-text {
    margin-top: 5px;
  }
  .product-rating .product-rating-text, .product-rating .product-rating-text a {
    color: var(--color-txt-80);
  }
  .product-gallery .wishlist button.btn-secondary {
    background: none;
    border: none;
  }
  #options-payment span {
    cursor: pointer;
    transition: all .2s ease-in-out;
    color: var(--color-txt-60);
  }
  #options-payment span:hover {
    color: var(--color-txt-80);
  }
  .look-options:after {
    background: var(--color-txt-80);
  }
  /*==Atributos pg-produto==*/
  ul.product-custom-fields .formErrorContent {
    background: rgba(255, 99, 71, 0.8);
  }
  .product-custom-fields .formError .formErrorArrow div {
    background: rgba(255, 99, 71, 0.8);
  }
  .product-attributes .attributes-item input[type=checkbox]:checked+label, .product-attributes .attributes-item input[type=radio]:checked+label {
    color: #fff;
    background-color: var(--cor-bg-bt-confirm);
  }
  #product-details .product-attributes fieldset {
    margin-bottom: 15px;
    text-align: center;
  }
  .product-attributes fieldset legend {
    margin: 0px 0 10px 0;
    font-weight: bold;
    font-size: 1rem;
  }
  .product-attributes .attributes-group .type-color label, .product-attributes .attributes-combo .type-color label {
    background: transparent;
    border: 1px solid var(--color-txt-20);
    width: 35px;
    height: 35px;
    border-radius: 0;
  }
  .product-attributes .attributes-item .color-mini {
    border-radius: 0%;
  }
  .product-attributes .attributes-group .type-radio label {
    min-width: 70px;
    margin-bottom: 14px;
    text-shadow: none;
    background-color: transparent;
    border: 1px solid var(--color-txt-20);
    color: var(--color-txt-80);
    border-radius: 0;
    font-size: 0.875rem;
  }
  /*--Att grupo individual--*/
  #product-details div[data-type="individual"] ul.attributes-group {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 10px;
  }
  #product-details div[data-type="individual"] ul.attributes-group li {
    display: grid;
    justify-content: center;
    text-align: center;
    gap: 15px;
    margin: 0;
  }
  #product-details div[data-type="individual"] .attributes-item.type-color label {
    margin: auto;
  }
  #product-details div[data-type="individual"] ul.attributes-group li label {
    margin-bottom: 0;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  #product-details div[data-type="individual"] ul.attributes-group li .prod-quantity-cart {
    margin: 0;
    grid-row: 2;
  }
  @media (min-width: 900px) {
    .jssocials-share-whatsapp, .jssocials-share-messenger, .jssocials-share-telegram {
      display: none;
    }
  }
  @media (max-width: 768px) {
    #product-details div[data-type="individual"] ul.attributes-group {
      grid-template-columns: 1fr 1fr 1fr;
    }
    ul.product-additional-buttons {
      border-bottom: none !important;
    }
    .product-information {
      text-align: center;
    }
    #compartilhar {
      justify-content: center;
    }
    .product-details-content .procuct-detail>div, .product-details-content .procuct-detail>ul {
      text-align: center;
    }
  }
  @media (max-width: 600px) {
    #product-details div[data-type="individual"] ul.attributes-group {
      grid-template-columns: 1fr 1fr;
    }
  }
  /*--Fim att grupo individual--*/
  /*-- att grupo combo_multiple--*/
  .product-attributes ul.attributes-combinations>li.attributes-header {
    border-radius: 3px 3px 0px 0px;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 10px;
  }
  .product-attributes ul.attributes-combinations>li.attributes-combo {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 10px;
    justify-content: center;
    align-items: center;
  }
  ul.attributes-combinations .attributes-item-buy {
    display: flex;
    justify-content: flex-end;
  }
  .product-attributes ul.attributes-combinations>li.attributes-combo label {
    margin-bottom: 0;
  }
  @media (max-width: 600px) {
    .product-attributes ul.attributes-combinations>li.attributes-combo, ul.attributes-combinations .attributes-item-buy .prod-quantity-cart {
      font-size: 12px;
    }
  }
  /*--Fim att grupo combo_multiple--*/
  .procuct-values-action .measurements-table {
    text-align: center;
    margin: 0;
  }
  .measurements-table span.title-table {
    position: relative;
  }
  .product-values .currentPrice {
    display: flex;
    align-items: center;
    gap: 10px;
    justify-content: center;
    flex-wrap: wrap;
  }
  span.title-table::after {
    content: "";
    background: var(--cor-txt-gerais, #333);
    width: 0;
    height: 2px;
    left: 0;
    right: 0;
    bottom: -5px;
    margin: auto;
    display: block;
    position: absolute;
    transition: all 350ms ease-out 0s;
    -moz-transition: all 350ms ease-out 0s;
    -o-transition: all 350ms ease-out 0s;
    -webkit-transition: all 350ms ease-out 0s;
  }
  span.title-table:hover::after {
    width: 100%;
  }
  #product-details .product-values .currentPrice .price {
    color: var(--cor-txt-prc-prto, #000);
    font-size: 1.563rem;
  }
  #product-details .product-values .currentPrice .price.slash {
    opacity: 0.7;
    font-size: 1rem;
    margin: 0;
  }
  .grid-pg-product .product-values .currentPrice div {
    width: 100%;
    margin: 5px 0;
  }
  .product-values .currentPrice .installment-plan {
    font-size: 0.75rem;
    color: var(--color-txt-60);
  }
  .product-buttons-action .prod-quantity-cart {
    display: flex;
    justify-content: center;
    width: 100%;
  }
  .prod-quantity-cart button {
    font-size: 0.875em;
    color: var(--color-txt-80);
  }
  .prod-quantity-cart input {
    border: none;
    font-weight: 400;
    width: 50px;
  }
  .product-buttons-action .wishlist {
    padding: 5px;
  }
  .product-buttons-action button.btn-wishlist {
    border: none;
    background: none;
    cursor: pointer;
    font-size: 2em;
    color: red;
  }
  .product-buttons-action button.bt-buy {
    height: 50px;
  }
  #form-shipping {
    max-width: 250px;
    border-bottom: 1px solid var(--color-txt-40);
    border-radius: 0;
    margin: 0 auto;
  }
  #button-submit-cep {
    padding: 10px;
    cursor: pointer;
    right: 0;
  }
  #form-shipping input {
    border: none;
    background: none;
    width: 100%;
    height: 100%;
    padding: 10px;
  }
  ul.product-information li {
    font-size: 0.875rem;
  }
  .additional-buttons button.btn-secondary {
    background-color: transparent;
    border: none;
    color: var(--color-txt-60);
    padding: 0;
    font-size: 0.875rem;
  }
  .jssocials-shares {
    margin: 0;
    font-size: 0.875rem;
  }
  .product-additional-buttons .additional-buttons button.btn-secondary:hover {
    background-color: transparent !important;
    padding: 0;
    border: none !important;
    color: var(--color-txt-80) !important;
  }
  .additional-buttons a::after {
    content: "";
    background: var(--color-txt-80);
    width: 0;
    height: 1px;
    left: 0;
    right: 0;
    bottom: -5px;
    margin: auto;
    display: block;
    position: absolute;
    transition: all 350ms ease-out 0s;
    -moz-transition: all 350ms ease-out 0s;
    -o-transition: all 350ms ease-out 0s;
    -webkit-transition: all 350ms ease-out 0s;
  }
  .additional-buttons:hover a::after {
    width: 100%;
  }
  .text-postcode {
    color: var(--color-txt-80);
  }
  /*==KIT PG Produto==*/
  section.product-page div.product-kit {
    padding: 0;
  }
  section.product-page div.product-kit div.kit-list ul.kit-items li.kit-item {
    align-items: flex-start;
  }
  section.product-page div.product-kit li.kit-item {
    display: grid;
    grid-template-columns: max(120px) 1fr;
    align-items: center;
    margin-bottom: 20px;
  }
  section.product-page div.product-kit li.kit-item .kit-item-image {
    text-align: center;
    margin-right: 15px;
  }
  section.product-page div.product-kit li.kit-item .kit-item-image .image {
    border: 1px solid #e8e8e8;
  }
  section.product-page div.product-kit li.kit-item .image img {
    width: 100%;
    height: auto;
  }
  section.product-page div.product-kit li.kit-item .quantity {
    font-size: 12px !important;
  }
  div#box-product-payment-methods {
    text-align: center;
    font-weight: 500;
  }
  /*==FIM==*/
  /*-- DESCRICAO DO PRODUTO --*/
  section.description {
    margin: 30px 0;
    font-size: 1rem;
    background: #f9f9f9;
    padding: 10px;
    line-height: 1.5;
    color: #555;
  }
  section.description pre span {
    white-space: break-spaces;
  }
  section.description img {
    margin: 30px auto;
    display: block;
    max-width: 100%;
    height: auto;
  }
  section.description iframe {
    margin: 40px auto;
    display: block;
    max-width: 560px;
    max-height: 315px;
  }
  /*--RESPONSIVO PG PRODUTO--*/
  @media (max-width: 1200px) {
    .name-product-title {
      font-size: 1.375rem;
    }
    .product-details-content {
      display: grid;
      grid-template-columns: 50% 50%;
    }
    .product-details-content .procuct-detail {
      grid-column: 2;
      grid-row: 1;
      flex-basis: 100%;
      max-width: 100%;
      align-items: center;
    }
    .product-details-content .product-gallery {
      grid-column: 1;
      grid-row: 1 / 3;
      flex-basis: 100%;
      max-width: 100%;
    }
    .procuct-detail .product-rating {
      justify-content: center;
    }
    .description_list {
      align-items: center;
    }
    .procuct-detail .product-description-types p {
      text-align: center;
    }
    .product-details-content .procuct-detail>div, .product-details-content .procuct-detail>ul {
      text-align: center;
      justify-content: center;
    }
    .product-description-types .description_list .tab-label, #compartilhar, .product-additional-buttons {
      justify-content: center;
    }
    .description_list input:checked ~ .tab-content {
      text-align: center;
    }
    .product-details-content .procuct-values-action {
      grid-column: 2;
      grid-row: 2;
      flex-basis: 100%;
      max-width: 100%;
    }
    .gallery-thumbs .swiper-slide img {
      max-width: 80px;
    }
  }
  @media (max-width: 768px) {
    .product-details-content {
      grid-template-columns: 100%;
    }
    .product-details-content .procuct-detail {
      grid-column: 1;
      grid-row: 2;
    }
    .product-details-content .product-gallery {
      grid-column: 1;
      grid-row: 1;
    }
    .product-details-content .procuct-values-action {
      grid-column: 1;
      grid-row: 3;
    }
    section.description iframe {
      width: 100%;
    }
  }
</style>
<article itemscope itemtype="http://schema.org/Product" itemid="{{ product.id }}">
  <meta itemprop="productID" content="{{ product.id }}" />
  <meta itemprop="url" content="{{ product.url }}" />
  {% if product.gtin %}<meta itemprop="gtin" content="{{ product.gtin }}" />{% endif %}
  {% if product.mpn %}<meta itemprop="gtin" content="{{ product.mpn }}" />{% endif %}
  <form id="product-details" name="product-details" method="post" data-element="form-product-buy">
    {% include 'product/snippets/detail_fixed.tpl' %}
    <div class="product-details-content template-cards flex mb-30" wrap="true">
      <div class="procuct-detail position-relative flex mb-30" width="3" gap="30" direction="column" column="padding">
        {% if show_rating %}
        <div class="product-rating flex w-100" wrap="true" {% if product.rating.count > 0 %} itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"  {% endif %}>
          {% if product.rating.count > 0 %}
          <meta itemprop="bestRating" content="5" />
          <meta itemprop="worstRating" content="1" />
          <meta itemprop="ratingCount" content="{{ product.rating.count }}">
          <meta itemprop="reviewCount" content="{{ product.rating.count }}">
          <meta itemprop="ratingValue" content="{{ product.rating.rate }}" />
          <meta itemprop="itemReviewed" itemscope itemtype="http://schema.org/Thing" content="{{ product.name|raw }}" />
          {% endif %}
          {% set stars = product.reviews.average %}
          {% for i in 1..5 %}
          <i class="{{stars>=i ? "fas" : "far"}} fa-star">
          </i>
          {% endfor %}
          <div class="product-rating-text">
            <span>( {{ product.rating.count }} )
            </span> |
            <a href="javascript:void(0)" onclick="return ratingProduct({{ product.id }})" class="hiperlink">
              <i class="fas fa-pencil-alt">
              </i> Dê a sua avaliação!
            </a>
          </div>
        </div>
        {% endif %}
        {% if product.description.content %}
        <div class="product-description-types">
          {% if product.description.type == "html" %}
          {% if product.description_small %}
          <p class="description-small-product">{{ product.description_small|raw }}</p>
          {% endif %}
          {% elseif product.description.type == "list" %}
          {{ include('product/description/description_list.tpl',{description:product.description.content}, with_context = false) }}
          {% elseif product.description.type == "tabs" %}
          {{ include('product/description/description_tabs.tpl',{description:product.description.content}, with_context = false) }}
          {% endif %}
        </div>
        {% endif %}
        {% if product.marks.new or product.marks.hotdeal or product.marks.exclusive or product.free_shipping or product.immediate_delivery %}
        <ul class="product-marks flex w-100" wrap="true" gap="10">
          {% if product.marks.new %}
          <li class="mark-new text-center">
            <span>{{ variables.cms_grade_produtos.cms_txt_lancamento |raw }}
            </span>
          </li>
          {% endif %} {% if product.marks.hotdeal %}
          <li class="mark-hotdeal text-center">
            <span>{{ variables.cms_grade_produtos.cms_txt_oferta |raw }}
            </span>
          </li>
          {% endif %} {% if product.marks.exclusive %}
          <li class="mark-exclusive text-center">
            <span>{{ variables.cms_grade_produtos.cms_txt_exclusivo |raw }}
            </span>
          </li>
          {% endif %}
          {% if product.free_shipping %}
          <li class="mark-free-shipping">
            <span>{{ variables.cms_grade_produtos.cms_txt_freeshipping |raw }}
            </span>
          </li> 
          {% endif %}
          {% if product.immediate_delivery %} 
          <li class="immediate-delivery">
            <a href="javascript:void(0)" data-fancybox data-type="ajax" data-src="{{ goto.immediate_delivery }}">
              <span>{{ variables.cms_grade_produtos.cms_txt_delivery |raw }}
              </span>
            </a>
          </li>
          {% endif %}
        </ul>
        {% endif %}
        {% if product.sku or product.model or product.availability or product.manufacturer or product.tags %} 
        <ul class="product-information">
          {% if product.sku %} 
          <li class="produto_cod_ref">
            <b>Refer�ncia:
            </b>&nbsp;
            <span id="produto_cod_ref" itemprop="sku">{{ product.sku }}</span>
          </li> 
          {% endif %}
          {% if product.model %} 
          <li class="produto_modelo_marca" itemprop="brand" itemscope itemtype="http://schema.org/Brand">
            <b>Modelo/Marca:
            </b>&nbsp;
            <a href="{{ product.model.url }}">
              <span id="produto_modelo_marca" itemprop="brand">{{ product.model|raw }}</span>
            </a>
          </li>
          {% endif %}
          {% if product.availability %} 
          <li class="produto_disponibilidade">
            <b>Disponibilidade:
            </b> 
            <span>{{ product.availability|raw }}</span>
          </li>
          {% endif %}
          {% if product.manufacturer %} 
          <li class="produto_fabricante flex" wrap="true" align-items="center" >
            <span class="produto_fabricante_label">Fabricante:
            </span>
            <a title="{{ product.manufacturer.name|raw }}" href="{{ product.manufacturer.url }}" class="hiperlink flex">{{ product.manufacturer.label|raw }}</a>
          </li>
          {% endif %}
          {% for tag in product.tags %}
          {% if not tag.hidden %}
          <li class="tag-{{ tag.id }}">
            <b>{{ tag.group|raw }}:
            </b> {{ tag.values|join(', ')|raw }}
          </li>
          {% endif %}
          {% endfor %}
        </ul>
        {% endif %}
        {% if share.html %}
        <li id="compartilhar" class="flex w-100" wrap="true">{{ share.html|raw }} 
        </li>
        {% endif %}
        <ul class="product-additional-buttons flex w-100" wrap="true" gap="10">
          <li class="additional-buttons indicate-button">
            <a class="flex position-relative" href="javascript:void(0)" onClick="commendProduct({{ product.id }});return false;">{{ buttons.recommend|raw }}</a>
          </li>
          {% if show_reviews %}
          {% if product.rating.count > 0 %}
          <li class="additional-buttons comments-button">
            <a class="flex position-relative" data-fancybox data-options='{"type":"iframe","modal":false, "iframe" : {"css" : {"width" : "700px","height" : "400px"}}}' data-src="/product/{{product.id}}/reviews">
              <button class="btn btn-secondary" alt="Ver coment�rios" title="Ver coment�rios">
                <span>
                  <i class="fas fa-comment-lines">
                  </i> Ver coment�rios
                </span>
              </button>
            </a>
          </li>
          {% else %}
          <li class="additional-buttons comments-button">
            <a class="flex position-relative">
              <button data-action="productInfo.rating" class="btn btn-secondary" data-type="buttonAction">
                <span>
                  <i class="fa fa-comment">
                  </i> Deixar um coment�rio
                </span>
              </button>
            </a>
          </li>
          {% endif %}
          {% endif %}
          {% if lists.type is defined and lists.options is defined %}
          {% if lists.type != "flat" %}
          {% for list in lists.options %}
          <li class="additional-buttons button-add-list">
            <a class="flex position-relative" href="javascript:void(0);" data-action="productInfo.addCustomList" data-type="buttonAction" data-listId="{{ list.id }}">{{ list.button|raw }}</a>
          </li>
          {% endfor %}
          {% else %}
          <li class="additional-buttons button-add-list">
            {{ buttons.lists_add|raw }}
            <div id="dlg-add-list" style="display: none;">
              <ul id="list_group">
                {% for list in lists.options %}
                <li>
                  <input type="radio" name="listas" id="lista_{{list.id}}" value="{{ list.id }}" class="campo_option">
                  <label for="lista_{{list.id}}">{{ list.name|raw }}</label>
                </li>
                {% endfor %}
              </ul>
              <div class="layerBottom">
                <a href="javascript:void(0);" data-action="productInfo.addCustomList" data-type="buttonAction" data-listOptions="#list_group">
                  <button alt="OK" type="button" class="btn btn-secondary btn-success" title="OK">OK
                  </button>
                </a>
              </div>
            </div>
          </li>
          {% endif%}
          {% endif%}
        </ul>
      </div>
      <div class="product-gallery position-relative flex mb-30" width="6" direction="column" column="padding">
        <div class="header-title flex mb-30 w-100" direction="column">
          <h1 class="name-product-title text-center " itemprop="name">{{ product.name|raw }}</h1>
          {% if product.description.type != "html" %}
          {% if product.description_small %}
          <p class="description-small-product text-center">{{ product.description_small|raw }}</p>
          {% endif %}
          {% endif %}
        </div>
        <div class="product-gallery-carousel flex" direction="column">
          <div class="swiper-container gallery-top position-relative">
            {% if wishlist.status %}
            <div class="wishlist flex" align-items="center">
              <button data-pid="{{ product.id }}" type="button" class="btn-wishlist">
                <i class="{{wishlist.icon}}"> 
                </i>
              </button>
            </div>
            {% endif %}
            <div class="swiper-wrapper">
              {% set galleryImages = [] %}
              {% for image in product.gallery.images %}
              {% if image.source not in galleryImages %}
              {% set galleryImages = galleryImages|merge([image.source]) %}
              <div class="swiper-slide">
                <a rel="gallery" data-fancybox="gallery" data-img-id="{{ image.id }}" href="{{ image.source }}" title="{{ product.name|raw }}">
                  {{ image.thumb|raw }}
                  <link itemprop="image" href="{{ image.source }}" />
                  <img  width="{{ product.gallery.width }}" height="{{ product.gallery.height }}" alt="{{ product.name|raw }}" title="{{ product.name|raw }}" src="{{ image.source }}">
                </a>
              </div>
              {% endif %}
              {% endfor %}
              {% if product.videos %}
              <div class="swiper-slide video">
                {% if product.videos_type == "embed" and product.videos.url is
 defined %}
                <iframe class="w-100 h-100" data-fancybox="gallery" src="{{ product.videos.url }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                </iframe>
                {% elseif product.videos.name is defined %} 
                {{ product.videos.content }} {% endif %}
              </div>
              {% endif %}
            </div>
            {% if product.gallery.images|length > 1 or product.videos %}
            <div class="swiper-button-prev">
            </div>
            <div class="swiper-button-next">
            </div>
            {% endif %}
          </div>
          {% if product.gallery.images|length > 1 or product.videos %}
          <div class="swiper-container gallery-thumbs position-relative">
            <div class="{{ (product.gallery.images|length + product.videos|length) > 1 ? 'swiper-wrapper' : 'fixed-image' }}">
              {% for image in product.gallery.images %}
              <div class="swiper-slide">
                {{ image.thumb|raw }}
                <link itemprop="image" href="{{ image.source }}" />
                <img alt="{{ product.name|raw }}" title="{{ product.name|raw }}" src="{{ image.source }}">
              </div>
              {% endfor %}
              {% if product.videos %}
              <div class="swiper-slide video position-relative">{{ product.videos.thumb|raw }}
                <span class="flex position-absolute play-video-thumbs">
                  <i class="fa-duotone fa-circle-play fa-2x">
                  </i>
                </span>
              </div>
              {% endif %}
            </div>
          </div>
          {% endif %}
        </div>
      </div>
      <div class="procuct-values-action flex" width="3" gap="30" direction="column" column="padding">
        {% if product.price.count_down is defined %}
        {% include 'product/snippets/count_down.tpl' %}
        {% endif %}
        {% for tag in product.tags %}
        {% if tag.id == 'tabela' %}
        {{ include('product/snippets/tabela.tpl', {tags:tag.values})}}
        {% endif %}
        {% endfor %}
        {% if product.custom_fields is defined %}
        {% include 'product/snippets/customfields.tpl' %}
        {% endif %}
        {% if product.attributes is defined %}
        {% set attributes = product.attributes %}
        {% include 'product/snippets/attributes.tpl' %}
        {% endif %}
        {{ product.points ? product.points.template|replace({'{pontos}':product.points.value})|raw : '' }}
        {% if not show_price %}
        <div class="product-card-price-blocked">
          <div class="icon-block">
            <i class="fas fa-lock fa-2x">
            </i>
          </div>
          <div class="text">
            <b>Fa�a Login/Cadastro
            </b>
            <br>para ter acesso ao pre�o deste produto.
          </div>
        </div>
        {% else %}
        <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="product-values botao_comprar">
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
          {% if customer.discount is defined and customer.discount > 0 %} 
          <div class="desconto_exclusivo">{{ "Você tem <b>%02d&#37;</b> de <b>desconto exclusivo</b> no pedido!"|format(customer.discount)|raw }}</div> {% endif %}
          {% if product.just_today is defined %}
          <div class="tempo_restante">
            <div class="prod_vendidos" >Vendidos: {{ product.just_today.ordered }}
              {% if product.just_today.show_stock %}
              <br>
              <span>Aproveite, ainda temos 
                <b>{{ product.stock }} {{ product.stock > 1 ? 'itens' : 'item' }}</b> no estoque!
              </span>
              {% endif %}
            </div>
            <div class="space">&nbsp;
            </div>
            {{ product.just_today.countdown|raw }}
          </div>
          {% endif %}
        </div>
        {% if product.price.rules is defined %}
        {% include 'product/snippets/progressive_discount.tpl' %}
        {% endif %}
        {% include 'product/snippets/payment-options.tpl' %}
        {% if product.date_available %} 
        <div class="pre_venda">
          <img src="/imagens/icones/calendar.png" border=0 />
          <span>Pré-venda até: 
            <b>{{ product.date_available|date("d/m/Y") }} 
            </b>
          </span>
        </div>
        {% endif %}
        {% if product.kit is defined %}
        {% include 'product/snippets/kit.tpl' %}
        {% endif %}
        {% if product.stock > 0 %}
        <div class="botao_comprar product-details-action" data-element="action-buy">
          <div class="product-buttons-action flex w-100" align-items="center" justify-content="center" wrap="true" gap="10">
            {% if (quantity_select.status) and (product.attributes is not defined or product.attributes.type == "combo") %}
            <input name="quantity" id="quantity"  class="quantitySelect" type="number" value="{{ quantity_select.min }}" step="1" min="{{ quantity_select.min }}" max="{{ quantity_select.max }}">
            {% endif %}
            <a data-action="productInfo.buy" data-type="buttonAction" class="btn-buy style-button text-center w-100" data-format-result="productInfo.formatBuyResult">
              <button alt="Comprar" type="button" class="button-style-primary btn btn-primary btn-lg bt-buy w-100" title="Comprar">
                <span>
                  <i class="fa-duotone fa-cart-circle-plus">
                  </i> Comprar
                </span>
              </button>
            </a>
          </div>
        </div>
        {% endif %}
        {% include 'product/snippets/notify.tpl' %}
        {% if buttons.shipping is defined %}
        <div class="product-freight-calculation">
          <div id="form-shipping" class="flex position-relative" align-items="center">
            <input type="postcode" name="cep" id="cep" class="text-field" data-mask="00000-000" placeholder="Calcular frete">
            <a class="shipping-cauculo-button position-absolute" data-action="productInfo.getShipping" data-result=".shipping-quote-result" data-format-result="productInfo.formatShippingQuote" data-input="#cep" data-type="buttonAction" id="button-submit-cep">
              <i class="fa-duotone fa-magnifying-glass-location">
              </i>
            </a>
          </div>
          <div class="shipping-quote-result">
          </div>
        </div>
        {% endif %}
        {% endif %}
      </div>
    </div>
    {% if product.description.type == "html" %}
    <section class="description template-cards">
      {% if product.description.type == "html" %}
      {{ include(template_from_string(product.description.content)|raw) }}
      {% endif %}
    </section>
    {% endif %}
  </form>
  {#% for key in product|keys %#}
  {#{ key }#}
  {#% endfor %#}
</article>
{% if product.gallery.images|length <= 4 %}
<script>
  $( document ).ready(function() {
    var galleryTop = new Swiper('.gallery-top', {
      slidesPerView: 1,
      effect: 'fade',
      fadeEffect: {
        crossFade: true
      }
      ,
      loop: true,
      loopedSlides: {% if product.gallery.images|length and product.videos|length %}
      {{ product.gallery.images|length + product.videos|length - 1 }}
      {% else %}
      {{ product.gallery.images|length }}
      {% endif %},
      navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    }
                                ,
                                }
                               );
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      slidesPerView: {% if product.gallery.images|length and product.videos|length %}
      {{ product.gallery.images|length + product.videos|length - 1 }}
      {% else %}
      {{ product.gallery.images|length }}
      {% endif %},
      slideToClickedSlide: true,
      loop: true,
      loopedSlides: {% if product.gallery.images|length and product.videos|length %}
      {{ product.gallery.images|length + product.videos|length - 1 }}
      {% else %}
      {{ product.gallery.images|length }}
      {% endif %},
      spaceBetween: 10,
    }
                                  );
    galleryTop.controller.control = galleryThumbs;
    galleryThumbs.controller.control = galleryTop;
  }
                     );
  var product_gallery_show = function(data){
    const swiper = document.querySelector('.gallery-thumbs').swiper;
    swiper.slideTo(data-1);
  }
</script>
{% else %}
<script>
  $( document ).ready(function() {
    var galleryTop = new Swiper('.gallery-top', {
      slidesPerView: 1,
      effect: 'fade',
      loop: true,
      loopedSlides: 50,
      fadeEffect: {
        crossFade: true
      }
      ,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      }
      ,
    }
                               );
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      slidesPerView: 4,
      slideToClickedSlide: true,
      spaceBetween: 10,
      loopedSlides: 50,
      loop: true,
    }
                                  );
    galleryTop.controller.control = galleryThumbs;
    galleryThumbs.controller.control = galleryTop;
  }
                     );
  var product_gallery_show = function(data){
    const swiper = document.querySelector('.gallery-thumbs').swiper;
    swiper.slideTo(data-1);
  }
</script>
{% endif %}
