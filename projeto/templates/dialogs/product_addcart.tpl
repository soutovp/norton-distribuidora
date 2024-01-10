<style>
    .fancybox-content {
        max-width: 900px;
        overflow: initial;
        border-radius: 3px;
        padding: 0;
    }
    section.popup-product-added .success-added {
        padding: 15px;
    }
    .fancybox-container.popup .success-message{
        padding: 5px;
    }
    .product-added-succes {
        gap: 20px;
    }
    .success-message h1 {
        font-size: 1.125em;
        color: var(--cor-txt-nome-prto);
    }
    .success-message h1 a {
        color: var(--cor-txt-nome-prto);
    }
    .fancybox-container .success-message h1 span {
        font-weight: 400;
        color: var(--color-txt-80);
        margin: 5px 0;
        font-size: 0.875em;
    }
    .success-icon i {
        top: 0;
        right: -5px;
    }
    .fancybox-container.popup .actions .btn-primary {
        background: transparent;
        border: none;
        color: var(--cor-txt-nome-prto);
        transition: all ease-in-out .3s;
    }
    .fancybox-container.popup .actions .btn-primary:hover {
        border: none;
    }
    .fancybox-container.popup .fancybox-bg{
        display: none;
    }
    .fancybox-container.popup .fancybox-inner .fancybox-content{
        background: transparent;
    }
    .fancybox-container.popup .fancybox-slide--html .fancybox-close-small{
        display: none;
    }
    .fancybox-container.popup .fancybox-inner .fancybox-content .popup-product-added{
        position: fixed;
        top: 100px;
        right: 0px;
        box-shadow: rgba(0, 0, 0, 0.15) 0px 5px 15px 0px;
        max-width:500px;
        opacity: 0.9;
        transition: all ease-in-out 300ms;
    }
    .fancybox-container.popup .fancybox-inner .fancybox-content .popup-product-added:hover{
        opacity: 1;
    }
    .fancybox-container.popup .fancybox-inner .fancybox-content .popup-product-added .success-message span {
        display: flex;
    }
    .fancybox-container.popup section.popup-product-added .success-added .success-icon i {
        position: absolute;
        top: -20px;
        left: -15px;
        opacity: 0.9;
    }
    .fancybox-container.popup section.popup-product-added .success-added .success-icon i svg path,
    section.popup-product-added .success-added .success-icon i svg path{
        fill: var(--cor-bg-bt-confirm);
    }
    /*END FANCYBOX CLASS POPUP*/
    .fancybox-container section.popup-product-added .actions .keep-buying,
    .fancybox-container section.popup-product-added .actions .keep-buying:hover{
        background: transparent;
        border: none;
        color: var(--cor-txt-nome-prto);
        position: relative;
    }
    .addcart-products-item {
        max-width: 48%;
    }
    .actions {
        gap: 10px;
    }
    .actions button {
        font-size: 0.875em;
    }
    .fancybox-slide--html .fancybox-close-small {
        background-color: var(--cor-bg-bt-cancel);
        color: var(--cor-txt-bt-cancel);
        border-radius: 100%;
        right: -15px;
        top: -15px;
    }
    @media (max-width: 1000px) {
        .fancybox-content {
            max-width: 90%;
        }
        .fancybox-slide--html .fancybox-close-small {
            right: 5px;
            top: 5px;
        }
    }
    @media (max-width: 600px) {
        .success-added {
            flex-wrap: wrap;
            justify-content: center !important;
        }
        .success-icon i {
            top: -5px;
            right: -10px;
        }
        section.popup-product-added .success-added .success-icon img {
            margin: 0;
        }
        .actions {
            width: 100%;
            margin-top: 10px;
        }
        .fancybox-content {
            max-height: 90%;
        }
    }
</style>
<section class="popup-product-added">
    <div class="success-added template-cards flex" align-items="center" justify-content="space-between">
        <div class="product-added-succes flex" align-items="center">
            <div class="success-icon position-relative">
                <i class="fa-duotone fa-circle-check fa-2x position-absolute"></i>
                <img src="{{product.image}}" width="80" />
            </div>
            <div class="success-message">
                <h1 class="flex" direction="column">
                    <a href="{{ product.url }}">{{product.name|raw}}</a>
                    <span>Produto adicionado ao seu carrinho!
                    </span>  
                </h1>
            </div>
        </div>
        <div class="actions flex" direction="column">
            <button type="button" class="w-100 btn-primary btn cart button-style-primary" name="btn-cart" onclick="closeFancybox(); toggleSideCart();">
                <span>
                    <i class="fa-duotone fa-cart-circle-check"></i> Ver carrinho
                </span>
            </button>
            {% if (product.linked|length>0) %}
            <button type="button" class="w-100 btn-secondary  btn keep-buying undereffect" data-action="buildCartTemplate" onclick="$.fancybox.close();return false;"> 
                <i class="fa-light fa-arrow-left">
                </i> Continuar comprando
            </button>
            {% endif %}
        </div>
    </div>
</section>
<script>
    {% if (variables.cms_config_geral.cms_sidecart_show and product.linked|length == 0) %}
    addedToCart(true);
    {% else %}
    addedToCart(false);
    {% endif %}
</script>
{% if (product.linked|length>0) %}
{% set linkedProducts = product.linked %}
{% include 'product/snippets/addcart_linked.tpl' %}
{% elseif (variables.cms_config_geral.cms_sidecart_show) %}
{# DO NOT SHOW FANCYBOX, JUST SHOW SIDECART #}
<script>
    consoleDebug("product_addcart","init","DO NOT SHOW FANCYBOX");
    $(".fancybox-container").css("display", "none");
    closeFancybox();
</script>
{% else %}
{# SHOW POPUP FANCYBOX #}
<script>
    consoleDebug("product_addcart","init","SHOW POPUP FANCYBOX");
    function addedPopupAutoClose(){
        if ($(".popup-product-added").length > 0 && $(".popup-product-added").is(':hover') == false){
            parent.$.fancybox.close();
        }
    }
    $("html").removeAttr("style");
    $("body").removeAttr("style");
    $("body").removeClass("fancybox-active");
    $("body").removeClass("compensate-for-scrollbar");
    $(".fancybox-container").addClass("popup");
    $(".popup-product-added").mouseout(function() {
        setTimeout(function (){
            addedPopupAutoClose();
        }
        , 1000);
    }
    );
    setTimeout(function () {
        addedPopupAutoClose();
    }
    , 3000);
</script>
{% endif %}