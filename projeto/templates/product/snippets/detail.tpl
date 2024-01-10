{{ banners.getByTag(['produto','superior'],'and') }}
<style>
  .product-details-content {
    padding: 15px 0;
  }
  .product-gallery-carousel {
    height: calc(50px + {{ product.gallery.height }}px);
  }
  .gallery-top .fixed-image img {
    height: {{ product.gallery.height }}px;
  }
  .gallery-thumbs {
    width: calc(16% - 20px);
    height: 100%;
    margin-right: 20px;
    overflow: hidden;
  }
  .gallery-thumbs .swiper-slide {
    display: flex;
    align-items: flex-start;
    justify-content: center;
    box-sizing: border-box;
    cursor: pointer;
    padding: 5px;
  }
  .gallery-thumbs .swiper-slide img {
    margin: unset;
    padding: 3px;
    border: 2px solid transparent;
    border-radius: 3px;
    width: 100%;
    object-fit: cover;
  }
  .gallery-thumbs .swiper-slide-active img {
    border: 2px solid var(--cor-bg-bt-confirm);
  }
  .gallery-thumbs .swiper-slide img:hover {
    border: 2px solid var(--cor-bg-bt-confirm);
  }
  .gallery-top {
    width: 84%;
    height: auto;
    overflow: hidden;
  }
  .gallery-top img {
    object-fit: cover;
  }
  .gallery-top .swiper-button-next, .gallery-top .swiper-button-prev {
    background: none;
  }
  .gallery-top .swiper-slide {
    display: flex;
    align-items: flex-start;
    justify-content: center;
    box-sizing: border-box;
  }
  .gallery-top .swiper-button-next:after, .gallery-top .swiper-button-prev:after {
    font-size: 2em;
  }
  .gallery-thumbs .video img {
    display: flex;
    height: auto;
  }
  .play-video-thumbs {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
  .gallery-thumbs iframe {
    display: none;
  }
  .product-gallery .wishlist {
    position: absolute;
    right: 0;
    top: 5px;
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
  .product-gallery ul.product-marks li {
    padding: 5px;
    min-width: 100px;
    font-size: 0.825em;
  }
  .mark-new {
    background: var(--cor-bg-tag-lanc, #333);
    color: #fff;
  }
  .mark-hotdeal {
    background: var(--cor-bg-tag-ofer, #333);
    color: #fff;
  }
  .mark-exclusive {
    background: var(--cor-bg-tag-exclus, #333);
    color: #fff;
  }
  .jssocials-share a {
    border-radius: 3px;
  }
  .gallery-top .fixed-image .swiper-button-next, .gallery-top .fixed-image .swiper-button-prev {
    display: none;
  }
  .product-gallery-carousel .product-countdown {
    position: absolute;
    z-index: 2;
    bottom: 0;
    left: 50%;
    top: unset;
    transform: translate(-50%, -50%);
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
      width: 100%;
      display: flex;
      height: auto;
      margin: auto;
    }
    .gallery-thumbs .swiper-slide img {
      max-width: 80px;
    }
    .gallery-thumbs {
      width: 100%;
    }
    .play-video-thumbs {
      top: 50%;
    }
  }
  @media (max-width: 800px) {
    .product-details-content .flex[width='6'] {
      -ms-flex-preferred-size: 100%;
      flex-basis: 100%;
      max-width: 100%;
      padding: 0 5px;
    }
  }
  /*--INFO PRODUTO--*/
  .header-title h1 {
    font-size: 145%;
    margin-bottom: 5px;
    line-height: 1.125;
    font-weight: 600;
    letter-spacing: .004em;
  }
  .header-title p {
    font-size: 85%;
    word-break: break-word;
    line-height: 1.33337;
    letter-spacing: .009em;
  }
  section.product-page .currentPrice {
    max-width: 400px;
    text-align: left;
  }
  .product-details-content .procuct-detail .header-title {
    gap: 10px;
    padding: 0 0 40px;
  }
  .procuct-detail .header-title h1 {
    color: var(--cor-txt-nome-prto, #000);
  }
  .product-details-content .procuct-detail>div, .product-details-content .procuct-detail>ul {
    border-bottom: 1px solid var(--color-txt-20);
    padding: 20px 0;
    color: var(--color-txt-80);
  }
  .product-information .produto_fabricante {
    gap: 10px;
    margin-top: 10px;
  }
  .product-information .produto_fabricante img {
    width: auto;
    height: 50px;
  }
  section.product-page .product-custom-fields li {
    margin: 5px 0 30px;
    position: relative;
  }
  .product-rating {
    gap: 5px;
    font-size: 0.875em;
    color: #ffb503;
  }
  .marks-details-content {
    gap: 10px;
  }
  .mark-free-shipping, .immediate-delivery {
    border: 1px solid;
    padding: 2px 15px;
    font-size: 90%;
    color: #fff;
    background-color: #666;
  }
  .product-information li + li {
    margin-top: 5px;
  }
  .product-rating .product-rating-text {
    color: var(--color-txt-80);
    margin-left: 10px;
  }
  .product-rating .product-rating-text, .product-rating .product-rating-text a {
    color: var(--color-txt-80);
  }
  .product-gallery .wishlist button.btn-secondary {
    background: none;
    border: none;
  }
  .product-details-action .btn-primary {
    width: 300px;
  }
  /*==Atributos pg-produto==*/
  .product-attributes ul.attributes-combinations>li>div {
    text-align: center;
    margin: 0;
    width: 100%;
    color: #666;
  }
  #product-details .product-attributes fieldset {
    margin-bottom: 15px;
  }
  .product-attributes fieldset legend {
    margin: 0px 0 10px 0;
    font-weight: bold;
  }
  .product-attributes .attributes-group .type-color label, .product-attributes .attributes-combo .type-color label {
    padding: 5px;
    border-radius: 100%;
  }
  .product-attributes .attributes-group .type-radio label {
    min-width: 70px;
    margin-bottom: 14px;
    text-shadow: none;
  }
  ul.product-custom-fields .formErrorContent, ul.product-custom-fields .formErrorArrow div {
    background: rgba(255, 99, 71, 0.8);
  }
  /*--Att grupo individual--*/
  #product-details div[data-type="individual"] ul.attributes-group {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    gap: 15px;
  }
  #product-details div[data-type="individual"] ul.attributes-group li {
    display: grid;
    justify-content: center;
    text-align: center;
    gap: 15px;
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
  .product-values {
    grid-column: 2;
    justify-content: flex-end;
    border-bottom: none;
    margin-bottom: 0;
  }
  .product-details-content .product-buttons-action, .product-notify-availability.hide, #box-product-payment-methods, .product-freight-calculation, ul.product-additional-buttons {
    grid-column: 2;
  }
  #product-details .product-values {
    display: flex;
    flex-flow: column;
    gap: 30px;
    justify-content: space-between;
    border-bottom: none;
    margin-bottom: 0;
  }
  #product-details .product-values .currentPrice .price {
    color: var(--cor-txt-prc-prto, #000);
    font-size: 1.5rem;
  }
  #product-details .product-values .currentPrice .price.slash {
    opacity: 0.7;
    font-size: 1rem;
  }
  .grid-pg-product .product-values .currentPrice div {
    width: 100%;
    margin: 5px 0;
  }
  #product-details .product-values .currentPrice .installment-plan {
    font-size: 0.875em;
    color: var(--cor-txt-prc-prto, #000);
    opacity: 0.8;
  }
  .product-buttons-action .prod-quantity-cart, .product-buttons-action .btn.btn-primary, .product-buttons-action .wishlist {
    height: 40px;
    border-radius: 3px;
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
  #form-shipping {
    max-width: 180px;
    border: 1px solid #e5e5e5;
    border-radius: 3px;
    margin-top: 0;
  }
  #button-submit-cep {
    padding: 10px;
    cursor: pointer;
    right: 0;
    color: #555;
  }
  #button-submit-cep:hover {
    color: #333;
  }
  #form-shipping input {
    border: none;
    width: 100%;
    height: 100%;
    padding: 10px;
  }
  .additional-buttons button.btn-secondary {
    background-color: transparent;
    border: none;
    color: var(--color-txt-60);
    padding: 0;
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
    font-size: 0.75rem !important;
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
    .procuct-detail .formError {
      left: 0 !important;
    }
  }
  @media (max-width: 1000px) {
    .procuct-detail .product-details-action .btn-primary {
      width: 190px;
    }
    #product-details .product-values .currentPrice .price {
      font-size: 1.5em;
    }
    #product-details .product-values .currentPrice .price.slash {
      font-size: 1em;
      opacity: 0.7;
    }
  }
  @media (max-width: 800px) {
    .product-details-content {
      display: flex;
      flex-direction: column;
      padding: 5px;
    }
    .product-details-content .procuct-detail .header-title {
      text-align: center;
    }
    .product-rating {
      justify-content: center;
      flex-wrap: wrap;
    }
    .product-rating .product-rating-text {
      margin-left: 0;
    }
    .product-details-content .currentPrice {
      text-align: center !important;
      max-width: none !important;
    }
    #ProductOptionList fieldset legend, #ProductOptionList fieldset {
      text-align: center;
    }
    .product-buttons-action, .product-additional-buttons {
      justify-content: center;
    }
    #form-shipping {
      margin: auto;
    }
    .marks-details-content {
      justify-content: center;
      margin-top: 15px;
    }
    .product-gallery ul.product-marks {
      margin: 0;
      gap: 5px;
      position: initial;
    }
    #product-details {
      padding: 5px;
    }
    ul.botoes_adicionais li.bt_frete_ajax #form_shipping {
      max-width: unset;
    }
    .product-buttons-action .prod-quantity-cart {
      width: 100%;
      justify-content: center;
    }
  }
  @media (max-width: 600px) {
    .procuct-detail .product-buttons-action .prod-quantity-cart {
      width: 100%;
      justify-content: center;
      border: none;
    }
    section.product-page .currentPrice {
      max-width: 220px;
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
    <div class="product-details-content template-cards flex mb-30">
      <div class="product-gallery position-relative flex mb-30" width="6" direction="column" column="padding">
        <div class="product-gallery-carousel flex" wrap="true">
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
              <div class="swiper-slide video">
                <div class="position-relative">
                  {{ product.videos.thumb|raw }}
                  <span class="flex position-absolute play-video-thumbs">
                    <i class="fa-duotone fa-circle-play fa-2x">
                    </i>
                  </span>
                </div>
              </div>
              {% endif %}
            </div>
          </div>
          {% endif %}
          <div class="swiper-container gallery-top position-relative">
            {% if product.price.count_down is defined %}
            {% include 'product/snippets/count_down.tpl' %}
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
            <ul class="product-marks flex w-100" justify-content="center" wrap="true">
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
            </ul>
          </div>
        </div>
        {% if share.position == 1 %}
        <span id="compartilhar" class="flex w-100" wrap="true">{{ share.html|raw }} 
        </span>{% endif %}
      </div>
      <div class="procuct-detail flex" width="6" direction="column" column="padding">
        <div class="header-title flex" direction="column">
          <h1 itemprop="name">{{ product.name|raw }}</h1>
          {% if product.description_small %}
          <p>{{ product.description_small|raw }}</p>
          {% endif %}
          {% if show_rating %}
          <div class="product-rating flex w-100" {% if product.rating.count > 0 %} itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"  {% endif %}>
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
              <span>{{ product.rating.count }}</span> avaliações |
              <a href="javascript:void(0)" onclick="return ratingProduct({{ product.id }})" class="hiperlink">
                <i class="fas fa-pencil-alt">
                </i> Dê a sua avaliação!
              </a>
            </div>
          </div>
          {% endif %}
          {% for tag in product.tags %}
          {% if tag.id == 'tabela' %}
          {{ include('product/snippets/tabela.tpl', {tags:tag.values})}}
          {% endif %}
          {% endfor %}
          <div class="marks-details-content flex" wrap="true">
            {% if product.free_shipping %}
            <div class="mark-free-shipping">
              <span>{{ variables.cms_grade_produtos.cms_txt_freeshipping |raw }}
              </span>
            </div> 
            {% endif %}
            {% if product.immediate_delivery %} 
            <div class="immediate-delivery">
              <a href="javascript:void(0)" data-fancybox data-type="ajax" data-src="{{ goto.immediate_delivery }}">
                <span>{{ variables.cms_grade_produtos.cms_txt_delivery |raw }}
                </span>
              </a>
            </div>
            {% endif %}
          </div>
        </div>
        <ul class="product-information">
          {% if product.sku %} 
          <li class="produto_cod_ref">
            <b>Referência:
            </b>&nbsp;
            <span id="produto_cod_ref" itemprop="sku">{{ product.sku }}</span>
          </li> 
          {% endif %}
          {% if share.position == 4 %} 
          <li class="produto_share">
            <span id="compartilhar" class="flex w-100" wrap="true">{{ share.html|raw }} 
            </span>
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
            <b>Faça Login/Cadastro
            </b>
            <br>para ter acesso ao preço deste produto.
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
          <div class="product-buttons-action flex" align-items="center" wrap="true" gap="20">
            {% if (quantity_select.status) and (product.attributes is not defined or product.attributes.type == "combo") %}
            <input name="quantity" id="quantity"  class="quantitySelect" type="number" value="{{ quantity_select.min }}" step="1" min="{{ quantity_select.min }}" max="{{ quantity_select.max }}">
            {% endif %}
            <div class="action-button-buy flex" gap="10" align-items="center">
              <a data-action="productInfo.buy" data-type="buttonAction" class="btn-buy" data-format-result="productInfo.formatBuyResult">
                <button alt="Comprar" type="button" class="button-style-primary btn btn-primary btn-lg bt-buy" title="Comprar">
                  <span>
                    <i class="fa-duotone fa-cart-circle-plus">
                    </i> Comprar
                  </span>
                </button>
              </a>
              {% if wishlist.status %}
              <div class="wishlist flex" align-items="center">
                <button data-pid="{{ product.id }}" type="button" class="btn-wishlist">
                  <i class="{{wishlist.icon}}"> 
                  </i>
                </button>
              </div>
              {% endif %}
            </div>
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
        <ul class="product-additional-buttons collection-grid mode-grid flex w-100" wrap="true" gap="20">
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
                  </i> Ver comentários
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
                  </i> Deixar um comentário
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
          {% if share.position == 2 %} 
          <li id="compartilhar" class="flex w-100" wrap="true">{{ share.html|raw }} 
          </li>
          {% endif %}
        </ul>
        {% include 'product/snippets/payment-options.tpl' %}
        {% endif %}
      </div>
    </div>
    {% if product.description.content %}
    <section class="description template-cards">
      {% if product.description.type == "html" %}
      {{ include(template_from_string(product.description.content)|raw) }}
      {% elseif product.description.type == "list" %}
      {{ include('product/description/description_list.tpl',{description:product.description.content}, with_context = false) }}
      {% elseif product.description.type == "tabs" %}
      {{ include('product/description/description_tabs.tpl',{description:product.description.content}, with_context = false) }}
      {% endif %}
    </section>
    {% endif %}
    {% if share.position == 3 %} {{ share.html|raw }} {% endif %}
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
      loop: true,
      fadeEffect: {
        crossFade: true
      }
      ,
      loopedSlides: 50,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      }
      ,
    }
                               );
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      slidesPerView: {{ product.gallery.images|length and product.videos|length ? product.gallery.images|length + product.videos|length - 1 : product.gallery.images|length }},
      slideToClickedSlide: true,
      loop: true,
      loopedSlides: 50,
      breakpoints: {
      1250: {
      direction: 'vertical',
      loop: true, 
      spaceBetween: 10,
      slidesPerView: {{ product.gallery.images|length and product.videos|length ? product.gallery.images|length + product.videos|length - 1 : product.gallery.images|length }},
    }
                                   ,
                                   }
                                   ,
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
      fadeEffect: {
        crossFade: true
      }
      ,
      loop: true,
      loopedSlides: 50,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
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
      breakpoints: {
        1250: {
          direction: 'vertical',
          spaceBetween: 0,
          slidesPerView: 4,
        }
        ,
      }
      ,
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
