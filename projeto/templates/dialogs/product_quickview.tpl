<link rel="stylesheet"type="text/css" href="{{asset("validate/3.1.0/validate.css","libs")}}">
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js">
</script>
<!-- Initialize Swiper -->
<script  src="{{asset("validate/3.1.0/validate.lang.pt-br.js","libs")}}" type="text/javascript">
</script>
<script  src="{{asset("validate/3.1.0/validate.js","libs")}}" type="text/javascript">
</script>
<style>
    .fancybox-active {
        overflow-y: hidden;
    }
    .fancybox-content {
        max-width: 1200px;
        overflow: initial;
        border-radius: 3px;
        padding: 10px;
    }
    .fancybox-slide--html .fancybox-close-small {
        display: none !important;
    }
    @media(max-width: 1250px) {
        .fancybox-content {
            max-width: 95%;
        }
    }
    /* SEE INFORMATION */
    .separating-edge {
        width: 1px;
        background-color: var(--color-txt-20);
        border-radius: 100%;
    }
    .quickview-product-details {
        background-color: var(--cor-bg-blcs-gp);
        padding: 15px;
    }
    section.product-page-quickview .name-product{
        position: sticky;
        background-color: var(--cor-bg-blcs-gp);
        margin: 0 auto 2em;
        top: -15px;
        left: 0;
        right: 0;
        z-index: 9;
        height: 70px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-bottom: 1px solid var(--color-txt-20);
    }
    section.product-page-quickview .see-information {
        font-size: 0.750em;
        margin-bottom: 5px;
        color: var(--color-txt-80);
    }
    section.product-page-quickview .name-product a {
        color: var(--color-txt-80);
        font-size: 1.250em;
        max-width: 80%;
        color: var(--cor-txt-nome-prto);
        background-color: var(--cor-bg-blcs-gp, #fff);
        text-align: center;
    }
    section.product-page-quickview .see-information a {
        position: relative;
        color: var(--color-txt-80);
    }
    section.product-page-quickview .see-information a:after {
        content: '';
        background: color: var(--color-txt-80);
        width: 0;
        height: 1px;
        left: 0;
        right: 0;
        bottom: -2px;
        margin: auto;
        display: block;
        position: absolute;
        transition: all 350ms ease-out 0s;
        -moz-transition: all 350ms ease-out 0s;
        -o-transition: all 350ms ease-out 0s;
        -webkit-transition: all 350ms ease-out 0s;
    }
    section.product-page-quickview .see-information a:hover:after {
        width: 100%;
    }
    /* END SEE INFORMATION */
    /* Img/Name product */
    section.product-page-quickview .name-product .hide-img-quick {
        max-width: 70px;
        height: 100%;
        opacity: 0;
        pointer-events: none;
    }
    section.product-page-quickview .name-product .hide-img-quick.img-quick{
        opacity: 1;
        pointer-events: inherit;
    }
    section.product-page-quickview span.close-fancybox {
        width: 25px;
        height: 25px;
        font-size: 1.250rem;
        border-radius: 100%;
        cursor: pointer;
        color: var(--cor-txt-nome-prto);
        right: 10px;
        top: 10px;
        border: none;
        position: absolute;
        align-items: center;
        justify-content: center;
        display: flex;
    }
    /*End name product*/
    /*==GALERIA PRODUTO ==*/
    img.etalage_thumb_image {
        display: none;
    }
    .quickview-product-details .product-gallery {
        width: 55%;
    }
    .product-gallery-carousel {
        height: 600px;
        position: relative;
    }
    .gallery-thumbs {
        width: calc(16% - 20px);
        height: 100%;
        margin-right: 20px;
        overflow: hidden;
        order: 1;
    }
    .gallery-thumbs .swiper-slide img {
        margin: unset;
        padding: 3px;
        border: 1px solid transparent;
        width: 100%;
        height: auto;
        -o-object-fit: cover;
        object-fit: cover;
    }
    .gallery-thumbs .swiper-slide-active img {
        border: 1px solid var(--cor-bg-bt-confirm);
    }
    .gallery-thumbs .swiper-slide img:hover {
        border: 1px solid var(--cor-bg-bt-confirm);
    }
    .gallery-top {
        width: 84%;
        height: auto;
        overflow: hidden;
        order: 2;
    }
    .gallery-top img {
        width: auto;
        max-height: 600px;
    }
    .gallery-top .swiper-slide {
        display: flex;
        align-items: flex-start;
        justify-content: center;
        box-sizing: border-box;
    }
    .gallery-top .video iframe {
        max-width: 100%;
    }
    .gallery-thumbs .video img {
        display: flex;
        height: auto;
    }
    .play-video-thumbs {
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        color: #ff0000;
    }
    .swiper-slide.video iframe {
        height: 100%;
    }
    .gallery-top .video {
        height: 500px;
    }
    .gallery-thumbs iframe {
        display: none;
    }
    section.product-page-quickview .product-gallery .wishlist {
        position: absolute;
        right: 0;
        top: 8px;
        z-index: 1;
    }
    section.product-page-quickview .product-gallery .wishlist button.btn-wishlist {
        background: none;
        border: none;
        color: red;
        color: color: var(--color-txt-80);
        font-size: 1.250em;
    }
    section.product-page-quickview .procuct-detail ul.product-marks {
        display: flex;
        justify-content: start;
        gap: 10px;
        font-size: 0.750em;
        width: 45%;
    }
    .quickview-product-details .product-attributes fieldset .type-color label {
        height: 40px;
        width: 40px;
    }
    section.product-page-quickview .procuct-detailul.product-marks li + li {
        margin-left: 5px;
    }
    section.product-page-quickview .procuct-detail ul.product-marks li {
        font-size: 0.75rem;
        padding: 2px;
        margin-right: 5px;
    }
    section.product-page-quickview .mark-new {
        background: var(--cor-bg-tag-lanc, #333);
        color: #fff;
    }
    section.product-page-quickview .mark-hotdeal {
        background: var(--cor-bg-tag-ofer, #333);
        color: #fff;
    }
    section.product-page-quickview .mark-exclusive {
        background: var(--cor-bg-tag-exclus, #333);
        color: #fff;
    }
    section.product-page-quickview .jssocials-share a {
        border-radius: 3px;
    }
    .gallery-top .fixed-image .swiper-button-next, .gallery-top .fixed-image .swiper-button-prev {
        display: none;
    }
    @media (max-width: 1400px) {
        .gallery-thumbs {
            width: calc(16% - 20px);
            height: calc(900px - 300px);
            margin-right: 20px;
            overflow: hidden;
        }
    }
    @media (max-width: 1250px) {
        .product-gallery-carousel {
            flex-direction: column;
            gap: 10px;
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
        .gallery-thumbs .swiper-slide {
            align-items: center;
            min-height: auto;
        }
        .product-details-content {
            height: auto;
        }
        .gallery-thumbs .swiper-slide img {
            max-width: 80px;
        }
    }
    /*--INFO PRODUTO--*/
    .procuct-detail {
        max-width: 380px;
    }
    section.product-page li, section.product-page ul {
        color: var(--color-txt-80);
    }
    .quickview-product-details .header-title p {
        color: var(--color-txt-80);
        font-size: 0.875em;
    }
    section.product-page-quickview .product-details-content .procuct-detail .produto_cod_ref {
        padding: 10px 0;
    }
    section.product-page-quickview .product-custom-fields li {
        margin: 5px 0 30px;
        position: relative;
    }
    section.product-page-quickview .marks-details-content {
        display: flex;
        gap: 10px;
        font-size: 0.750em;
    }
    section.product-page-quickview .product-rating {
        display: flex;
        flex-wrap: wrap;
        gap: 5px;
        color: var(--cor-bg-bt-confirm);
        width: 100%;
        font-size: 0.750em;
    }
    section.product-page-quickview .product-rating a {
        color: var(--cor-txt-nome-prto);
        opacity: 0.8;
    }
    section.product-page-quickview .product-rating a:hover {
        opacity: 1;
    }
    section.product-page-quickview .marks-details-content span {
        background-color: #77777770;
        padding: 3px;
        min-width: 55px;
        color: #fff;
        text-align: center;
    }
    section.product-page-quickview ul.product-information {
        padding-bottom: 10px;
        font-size: 0.750em;
    }
    section.product-page-quickview .product-details-content .procuct-detail #ProductOptionList {
        overflow-y: auto;
        max-height: 275px;
    }
    section.product-page-quickview .immediate-delivery a span {
        color: var(--txt-ff);
    }
    section.product-page-quickview .campo_numero, .campo_texto, select {
        max-width: 100%;
    }
    /*==Atributos pg-produto==*/
    .product-attributes ul.attributes-combinations>li>div {
        text-align: center;
        margin: 0;
        width: 100%;
        color: #666;
    }
    section.product-page-quickview .product-attributes fieldset legend {
        margin: 0px 0 10px 0;
        font-weight: bold;
    }
    section.product-page-quickview .product-attributes .attributes-group .type-color label, .product-attributes .attributes-combo .type-color label {
        background: none;
        height: 40px;
        width: 40px;
        border-radius: 100%;
        box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;
    }
    .product-attributes .attributes-item input[type=checkbox]:checked+label, .product-attributes .attributes-item input[type=radio]:checked+label {
        background-color: var(--cor-bg-bt-confirm);
        color: #fff;
    }
    /*--Att grupo individual--*/
    section.product-page-quickview #product-details div[data-type="individual"] ul.attributes-group {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 15px;
    }
    section.product-page-quickview #product-details div[data-type="individual"] ul.attributes-group li {
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
    section.product-page-quickview #product-details div[data-type="individual"] ul.attributes-group li .prod-quantity-cart {
        margin: 0;
        grid-row: 2;
    }
    @media (min-width: 900px) {
        section.product-page-quickview .jssocials-share-whatsapp, .jssocials-share-messenger, .jssocials-share-telegram {
            display: none;
        }
    }
    @media (max-width: 768px) {
        section.product-page-quickview #product-details div[data-type="individual"] ul.attributes-group {
            grid-template-columns: 1fr 1fr 1fr;
        }
    }
    @media (max-width: 600px) {
        section.product-page-quickview #product-details div[data-type="individual"] ul.attributes-group {
            grid-template-columns: 1fr 1fr;
        }
    }
    /*--Fim att grupo individual--*/
    /*-- att grupo combo_multiple--*/
    section.product-page-quickview .product-attributes ul.attributes-combinations>li.attributes-combo {
        border-top: 1px solid #e3e3e3;
        padding-top: 10px;
        margin-bottom:10px;
    }
    section.product-page-quickview ul.attributes-combinations .attributes-item-buy {
        display: flex;
        justify-content: flex-end;
    }
    section.product-page-quickview .product-attributes ul.attributes-combinations>li.attributes-combo label {
        margin-bottom: 0;
    }
    @media (max-width: 600px) {
        section.product-page-quickview .product-attributes ul.attributes-combinations>li.attributes-combo, ul.attributes-combinations .attributes-item-buy .prod-quantity-cart {
            font-size: 0.750em;
        }
    }
    /*--Fim att grupo combo_multiple--*/
    section.product-page-quickview .currentPrice .price.slash {
        font-size: 1rem;
        opacity: 0.8;
        margin: 0;
    }
    section.product-page-quickview .currentPrice .price {
        color: var(--cor-txt-prc-prto, #000);
        font-size: 1.5rem;
    }
    section.product-page-quickview .grid-pg-product .produto_preco .currentPrice div {
        width: 100%;
        margin: 5px 0;
    }
    section.product-page-quickview .installment-plan {
        font-size: 0.750em;
        opacity: 0.8;
    }
    .product-page-quickview .prod-quantity-cart {
        font-size: 0.750em;
    }
    section.product-page-quickview  .product-buttons-action .wishlist {
        background-color: #e5e5e5;
        padding: 5px;
    }
    section.product-page-quickview  .product-buttons-action button.btn-wishlist {
        border: none;
        background: none;
    }
    section.product-page-quickview  .product-buttons-action .wishlist {
        background-color: #e5e5e5;
        padding: 5px;
    }
    /*==KIT PG Produto==*/
    section.product-page-quickview  section.product-page div.product-kit {
        padding: 0;
    }
    section.product-page-quickview  section.product-page div.product-kit div.kit-list ul.kit-items li.kit-item {
        align-items: flex-start;
    }
    section.product-page-quickview  section.product-page div.product-kit li.kit-item {
        display: grid;
        grid-template-columns: max(120px) 1fr;
        align-items: center;
        margin-bottom: 20px;
    }
    section.product-page-quickview  section.product-page div.product-kit li.kit-item .kit-item-image {
        text-align: center;
        margin-right: 15px;
    }
    section.product-page-quickview  section.product-page div.product-kit li.kit-item .kit-item-image .image {
        border: 1px solid #e8e8e8;
    }
    section.product-page-quickview  section.product-page div.product-kit li.kit-item .image img {
        width: 100%;
        height: auto;
    }
    section.product-page-quickview  section.product-page div.product-kit li.kit-item .quantity {
        font-size: 0.750em !important;
    }
    /*==FIM==*/
    /*--RESPONSIVO PG PRODUTO--*/
    @media (max-width: 1000px) {
        section.product-page-quickview  .product-details-content {
            display: flex;
            flex-direction: column;
        }
        .quickview-product-details .product-gallery {
            width: 100%;
        }
        section.product-page-quickview  .product-details-content .procuct-detail .header-title {
            text-align: center;
            align-items: center;
        }
        section.product-page-quickview  .product-rating {
            justify-content: start;
            flex-wrap: wrap;
        }
        section.product-page-quickview  .product-rating .product-rating-text {
            margin-left: 0;
        }
        section.product-page-quickview  .product-details-content .currentPrice, section.product-page-quickview .product-information li {
            text-align: center;
        }
        section.product-page-quickview  #ProductOptionList fieldset legend, #ProductOptionList fieldset {
            text-align: center;
        }
        .quick-att ul.product-custom-fields label {
            text-align: center;
            width: 100%;
            display: block;
            margin-bottom: 10px;
        }
        .fancybox-content{
            overflow: auto;
        }
    }
    @media (max-width: 400px) {
        section.product-page-quickview  .product-buttons-action .prod-quantity-cart {
            width: 100%;
            justify-content: center;
            border: none;
        }
    }
    /*==Contador regressivo==*/
    section.product-page-quickview .countdown-product {
        position: unset;
        order: 2;
        max-width: 180px;
    }
    section.product-page-quickview .countdown-product .time-left {
        font-size: 75%;
        text-align: center;
        height: auto;
    }
    section.product-page-quickview .countdown-product .countdown .time-left>span {
        min-width: 40px;
    }
    section.product-page-quickview .countdown-product .time-left .time-text {
        width: 100%;
        gap: 10px;
    }
    section.product-page-quickview .countdown-product .time-icon {
        font-size: 1.5em;
        padding: 0 15px;
    }
    section.product-page-quickview .countdown-product .count-text {
        min-width: 65px;
        height: 65px;
        gap: 10px;
        background-color: transparent;
        border: 1px solid var(--cor-txt-nome-prto);
        color: var(--cor-txt-nome-prto);
        font-weight: 400;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        font-size: 1.4em;
        box-shadow: rgb(50 50 93 / 25%) 0px 2px 5px -1px, rgb(0 0 0 / 30%) 0px 1px 3px -1px;
    }
    @media (max-width: 1000px){
        section.product-page-quickview .countdown-product .count-text {
            min-width: 60px;
            height: 45px;
            gap: 0px;
        }
    }
    @media (max-width: 600px) {
        section.product-page-quickview .countdown-product .time-icon {
            font-size: 1.5em;
        }
        section.product-page-quickview .countdown-product .time-left {
            font-size: 90%;
        }
        section.product-page-quickview .product-gallery .wishlist {
            right: 0px;
            top: 25px;
        }
        section.product-page-quickview .name-product .hide-img-quick.img-quick {
            opacity: 0;
        }
        section.product-page-quickview .procuct-detail ul.product-marks {
            justify-content: start;
        }
        section.product-page-quickview #product-details .produto_preco .currentPrice .price{
            font-size: 100%;
        }
    }
    /* progressive discount */
    section.product-page-quickview div.product-progressive-discount {
        max-width: 100% !important;
    }
    section.product-page-quickview div.product-progressive-discount ul.rules li.body>div {
        flex: none;
        position: relative;
    }
    /* end progressive discount */
    /*Product-footer*/
    section.product-page-quickview .product-detail-footer {
        background: var(--cor-bg-blcs-gp, #fff);
        position: sticky;
        bottom: 0px;
        gap: 0 20px;
        z-index: 10;
        padding: 15px;
        webkit-box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
        box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
        border-top: 1px solid var(--color-txt-20);
    }
    .quickview-product-details .product-notify-availability {
        grid-row: 2;
        grid-column: 2;
        display: flex;
        align-items: center;
    }
    .quickview-product-details .product-notify-availability.hide {
        display: none !important;
    }
    .quickview-product-details .product-notify-availability .chip.out-of-stock {
        background-color: var(--cor-bg-bt-inativo);
        padding: 15px;
        opacity: 0.8;
        color: var(--cor-txt-bt-inativo);
        width: 100%;
        text-align: center;
    }
    .quickview-product-details .produto_preco {
        border: none;
        margin-bottom: 0;
        max-width: 30%;
    }
    .quickview-product-details .currentPrice {
        display: flex;
        flex-direction: column;
        gap: 5px;
    }
    @media (max-width: 1000px) {
        section.product-page-quickview .product-buttons-action{
            width: auto;
            flex-direction: column;
            gap: 10px !important;
        }
        section.product-page-quickview .see-information {
            text-align: center;
        }
        section.product-page-quickview .product-rating, section.product-page-quickview ul.product-information, section.product-page-quickview .procuct-detail ul.product-marks, section.product-page-quickview .marks-details-content {
            justify-content: center;
        }
        .procuct-detail {
            max-width: none;
            align-items: center;
        }
    }
    @media (max-width: 600px) {
        section.product-page-quickview .countdown-product {
            width: 100%;
            order: 1;
            max-width: 100%;
            margin-bottom: 10px;
        }
        section.product-page-quickview .produto_preco {
            order: 2;
            max-width: 50%;
        }
        section.product-page-quickview .name-product h1 {
            max-width: 250px;
            text-align: center;
            font-size: 95%;
        }
    }
    /*End-Product-Footer*/
</style>
<section class="product-page-quickview  position-relative">
    <form id="product-details" name="product-details" method="post" data-element="form-product-buy">
        <div class="name-product header-title">
            <a title="Nome do produto" href="{{ product.url }}">
                <b>{{ product.name|raw }}</b> 
            </a>
            <span class="close-fancybox position-absolute flex" align-items="center" justify-content="center" onclick="closeFancybox();"> 
                <i class="fal fa-times"> 
                </i>
            </span>
        </div>
        <div class="quickview-product-details">
            <div class="product-details-content flex" justify-content="space-between">
                <div class="product-gallery">
                    <div class="product-gallery-carousel">
                        <div class="product-gallery-carousel flex">
                            <div class="swiper-container gallery-top position-relative">
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
                                        {{ product.videos.content }}
                                        {% endif %}
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
                        </div>
                        {% if wishlist.status %}
                        <div class="wishlist flex" align-items="center">
                            <button data-pid="{{ product.id }}" type="button" class="btn-wishlist">
                                <i class="{{wishlist.icon}}"> 
                                </i>
                            </button>
                        </div>
                        {% endif %}  
                    </div>
                    {% if share.position == 1 %}
                    <span id="compartilhar">{{ share.html|raw }} 
                    </span>{% endif %}
                </div>
                <div class="separating-edge">
                </div>
                <div class="procuct-detail flex" direction="column" gap="30">
                    <div class="see-information">
                        <a class="full-information" href="{{ product.url }}">Ver informações completas
                        </a>
                    </div>
                    <div class="header-title flex" direction="column" gap="10">
                        {% if product.description_small %}
                        <p>{{ product.description_small|raw }}</p>
                        {% endif %}
                        {% if show_rating %}
                        <div class="product-rating" {% if product.rating.count > 0 %} itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"  {% endif %}>
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
                                ({{product.rating.count}}) | 
                                <a href="javascript:void(0)" onclick="return ratingProduct({{ product.id }})" class="hiperlink">
                                    <i class="fas fa-pencil-alt">
                                    </i> Dê a sua avaliação!
                                </a>
                            </div>
                        </div>
                        {% endif %}
                        {% if product.marks.new or product.marks.hotdeal or product.marks.exclusive %}
                        <ul class="product-marks">
                            {% if product.marks.new %}
                            <li class="mark-new">
                                <span>{{ variables.cms_grade_produtos.cms_txt_lancamento |raw }}
                                </span>
                            </li>
                            {% endif %}
                            {% if product.marks.hotdeal %}
                            <li class="mark-hotdeal">
                                <span>{{ variables.cms_grade_produtos.cms_txt_oferta |raw }}
                                </span>
                            </li>
                            {% endif %}
                            {% if product.marks.exclusive %}
                            <li class="mark-exclusive">
                                <span>{{ variables.cms_grade_produtos.cms_txt_exclusivo |raw }}
                                </span>
                            </li>
                            {% endif %}
                        </ul>
                        {% endif %}
                        {% if product.free_shipping or product.immediate_delivery %}
                        <div class="marks-details-content">
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
                        </div>
                        {% endif %}
                    </div>
                    {% if product.sku or product.model or product.availability or product.manufacturer or product.tags %} 
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
                            <span id="compartilhar">{{ share.html|raw }} 
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
                        <li class="produto_fabricante">
                            <span class="produto_fabricante_label">Fabricante:
                            </span>
                            <a title="{{ product.manufacturer.name|raw }}" href="{{ product.manufacturer.url }}" class="hiperlink">{{ product.manufacturer.label|raw }}</a>
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
                    <div class="quick-att flex" direction="column" gap="30">
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
                        {% if product.stock > 0 %}
                        <div class="product-buttons-action w-100 flex" align-items="center" gap="20">
                            {% if (quantity_select.status) and (product.attributes is not defined or product.attributes.type == "combo") %}
                            <input name="quantity" id="quantity"  class="quantitySelect" type="number" value="{{ quantity_select.min }}" step="1" min="{{ quantity_select.min }}" max="{{ quantity_select.max }}">
                            {% endif %}
                            <a data-action="productInfo.buy" data-type="buttonAction" class="btn-buy w-100" data-format-result="productInfo.formatBuyResult">
                                <button alt="Comprar" class="button-style-primary btn btn-primary btn-lg bt-buy w-100" title="Comprar">
                                    <span>
                                        <i class="fa-duotone fa-cart-circle-plus">
                                        </i> Comprar
                                    </span>
                                </button>
                            </a>
                        </div>
                        {% endif %}
                        {% endif %}
                    </div>
                    {% if share.position == 3 %} {{ share.html|raw }} {% endif %}
                </div>
            </div>
        </div>
    </form>
</section>
<script>
    $("section.product-page-quickview").ready(function() {
        /*TROCA BOTAO COMPRAR PARA INDISPONIVEL*/
        if ($(".product-notify-availability").hasClass("hide"))
        $(".product-detail-footer").show();
        else
        $(".product-detail-footer").hide();
        var $div = $(".product-notify-availability");
        var observer = new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {
                var attributeValue = $(mutation.target).prop(mutation.attributeName);
                consoleDebug("product-notify-availability changed to:", attributeValue);
                if (attributeValue.includes("hide"))
                $(".product-detail-footer").show();
                else
                $(".product-detail-footer").hide();
            }
            );
        }
        );
        observer.observe($div[0], {
            attributes: true,
            attributeFilter: ['class']
        }
        );
    }
    );
    /*FIM TROCA BOTAO COMPRAR PARA INDISPONIVEL*/
</script>
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
            loopedSlides: 50,
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
            loopedSlides: 50,
            breakpoints: {
                1250: {
                    direction: 'vertical',
                    loop: true, 
                    spaceBetween: 10,
                    slidesPerView: {% if product.gallery.images|length and product.videos|length %}
                    {{ product.gallery.images|length + product.videos|length - 1 }}
                    {% else %}
                    {{ product.gallery.images|length }}
                    {% endif %},
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
    fwCore.Init();
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
    fwCore.Init();
    var product_gallery_show = function(data){
        const swiper = document.querySelector('.gallery-thumbs').swiper;
        swiper.slideTo(data-1);
    }
</script>
{% endif %}