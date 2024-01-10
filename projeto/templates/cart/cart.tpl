{% include("header_small.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<style>
  .section-cart .custom-container content {
    background-color: var(--cor-bg-blcs-gp);
  }
  section.section-cart ul#shoppingCart {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0px 10px;
  }
  #shoppingCart li>div {
    padding: 0;
  }
  section.section-cart #shoppingCart li#order_shopping_cart {
    margin: 0;
    grid-column: 1 / -1;
    grid-row: 1;
  }
  section.section-cart #order_shopping_cart .shopping-cart-temp .content {
    display: grid;
    align-items: center;
    border-bottom: 1px solid var(--color-txt-20);
    grid-template-columns: 70px 5fr 1fr 1fr 1fr;
    gap: 10px;
    padding: 15px 0;
  }
  .shippingMethods dd div span span.desc b {
    padding: 0 4px;
  }
  section.section-cart #order_shopping_cart .shopping-cart-temp {
    font-size: unset;
    padding: 0 15px;
    text-align: unset;
    background: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto);
  }
  .shopping-cart-temp .remove a.cart-remove-item button.btn-secondary.btn-danger {
    border: none;
    background: none;
    color: var(--cor-txt-nome-prto);
    opacity: 0.6;
  }
  .shopping-cart-temp .remove a.cart-remove-item button.btn-secondary.btn-danger:hover {
    opacity: 0.8;
  }
  #order_shopping_cart .shopping-cart-temp .product .cart-item {
    display: grid;
    grid-template-columns: max(100px) 1fr;
    align-items: center;
    gap: 10px;
  }
  .image-cart img {
    height: auto;
  }
  .nome a {
    color: var(--cor-txt-nome-prto);
  }
  #order_shopping_cart .shopping-cart-temp .product .cart-item .product-attribute-list {
    font-size: 0.875em;
    display: grid;
    gap: 5px;
  }
  #order_shopping_cart .shopping-cart-temp .product .cart-item .product-attribute-list li.attributes-item {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    font-size: 1em;
    margin-bottom: 5px;
  }
  .attribute-list .sku-number-reference {
    margin-bottom: 5px;
  }
  #order_shopping_cart .shopping-cart-temp .product .cart-item .product-attribute-list .color-mini {
    width: 10px;
    height: 10px;
    border-radius: 100%;
    border: 1px solid #000;
  }
  .free-shipping-image img {
    display: none;
  }
  .free-shipping-image:before {
    content: 'Frete Grátis';
    background-color: rgba(47,79,47, 0.6);
    color: #fff;
    font-family: 'Open Sans', sans-serif !important;
    padding: 5px;
    text-transform: uppercase;
    border-radius: 3px;
    font-size: 0.875em;
    display: block;
    width: fit-content;
  }
  section.section-cart .head-cart-temp .quantify, .quantify .prod-quantity-cart {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  section.section-cart .quantify .prod-quantity-cart input#quantity {
    max-width: 45px;
    font-size: 0.875em;
  }
  .shopping-cart-temp .quantify .prod-quantity-cart button {
    border-radius: 3px;
    font-size: 0.813em;
    padding: 5px 6px;
    color: var(--cor-txt-nome-prto);
  }
  .shopping-cart-temp .unit_value {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
  }
  .shopping-cart-temp .quantify {
    text-align: center;
  }
  .shopping-cart-temp .total_value {
    text-align: end;
  }
  div#footer-cart-temp .footer-subtotal-temp {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    border-top: 1px solid var(--color-txt-20);
    padding: 10px;
  }
  div#footer-cart-temp .footer-subtotal-temp .subtotal-value {
    font-size: 1.250em;
    margin-left: 5px;
  }
  section.section-cart ul#shoppingCart li#discountExclusive, section.section-cart ul#shoppingCart li#kits, section.section-cart ul#shoppingCart li#descRules {
    grid-column: 2;
    grid-row: 3;
  }
  .body-cart-temp .content .unit_value, .body-cart-temp .content .total_value {
    color: var(--cor-txt-prc-prto);
  }
  /*--VALOR TOTAL CARRINHO--*/
  .total-completion {
    gap: 20px;
  }
  #orderTotals {
    color: var(--cor-txt-prc-prto);
    text-align: end;
  }
  #orderTotals .txt_price {
    font-size: 125%;
    font-weight: bold;
  }
  #orderTotals .txt_price .txt_total_lbl {
    font-size: 80%;
    font-weight: initial;
  }
  #orderTotals .forma_pagto {
    font-size: 85%;
  }
  /*--BOTOES CARRINHO--*/
  .goto-checkout {
    gap: 30px;
    padding: 30px 15px;
    margin-top: 30px;
    background-color: var(--cor-bg-blcs-gp, #FEEDE4);
    bottom: -100px;
  }
  .buttons-secondary {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
  }
  .goto-checkout .buttons-secondary a button {
    background-color: transparent;
    border: none;
    color: var(--cor-txt-nome-prto, #000);
    cursor: pointer;
  }
  .buttons-secondary a button::after {
    content: "";
    background-color: var(--cor-txt-nome-prto, #000);
    width: 0px;
    height: 1px;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    display: block;
    position: absolute;
    margin-top: 5px;
    transition: all 350ms ease-out 0s;
    -moz-transition: all 350ms ease-out 0s;
    -o-transition: all 350ms ease-out 0s;
    -webkit-transition: all 350ms ease-out 0s;
  }
  .buttons-secondary a:hover button::after {
    width: 100%;
  }
  .goto-checkout-fixed {
    width: 32%;
  }
  @media (max-width: 1000px) {
    section.section-cart form#shopping_cart .goto-checkout {
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }
    .buttons-secondary {
      order: 2;
    }
    .goto-checkout-fixed {
      width: 100%;
    }
    .total-completion {
      width: 100%;
      order: 1;
      justify-content: center;
      text-align: center;
    }
  }
  @media (max-width: 600px) {
    /*--RESPONSIVO CARRINHO--*/
    .shopping-cart-temp .head-cart-temp {
      display: none;
    }
    section.section-cart .container {
      padding: 5px;
    }
    section.section-cart #order_shopping_cart .shopping-cart-temp {
      margin: 0;
    }
    .shopping-cart-temp .head-cart-temp-temp-temp-temp-temp {
      display: none;
    }
    section.section-cart #order_shopping_cart .shopping-cart-temp .content {
      grid-template-columns: 1fr 1fr;
      align-items: center;
      position: relative;
    }
    #order_shopping_cart .shopping-cart-temp .content .remove {
      position: absolute;
      right: 5px;
      top: 5px;
    }
    #order_shopping_cart .shopping-cart-temp .product .cart-item {
      gap: 15px;
    }
    #order_shopping_cart .shopping-cart-temp .content .product {
      grid-column: 1 / -1;
      margin-top: 30px;
    }
    section.section-cart .head-cart-temp-temp-temp-temp-temp .quantify, .quantify .prod-quantity-cart {
      max-width: 100px;
      border: none;
      font-size: 80%;
    }
    .shopping-cart-temp .unit_value {
      justify-content: flex-end;
      align-items: flex-end;
      flex-direction: column;
    }
    .shopping-cart-temp .unit_value:before {
      content: 'un.';
      display: block;
      margin-right: 5px;
    }
    .shopping-cart-temp .unit_value {
      justify-content: flex-end;
      align-items: flex-end;
      flex-direction: unset;
    }
    .shopping-cart-temp .total_value {
      text-align: end;
      grid-column: 1 / 3;
    }
    .shopping-cart-temp .valores_produtos {
      gap: 10px;
      font-size: 95%;
    }
    .shopping-cart-temp .total_value:before {
      content: 'Total:';
    }
    section.section-cart ul#shoppingCart {
      display: flex;
      flex-direction: column;
    }
    /*--RESPONSIVO BOTOES CARRINHO--*/
    section.section-cart form#shopping_cart .goto-checkout:first-child {
      display: none;
      gap: 30px;
    }
    .goto-checkout button.btn-primary {
      order: 1;
      width: 100%;
    }
    .buttons-secondary {
      order: 2;
      gap: 15px;
      font-size: 80%;
    }
    .goto-checkout button {
      padding: 15px 0;
    }
  }
  .mark-free-shipping span {
    max-width: 100px;
    color: #fff;
  }
  .empty-cart {
    padding: 30px;
  }
  /*GOTO checkout FIXO*/
  .goto-checkout-fixed.fixed {
    position: fixed;
    bottom: 0px;
    left: 0;
    right: 0;
    box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
    background-color: var(--cor-bg-blcs-gp);
    width: 100%;
  }
  .goto-checkout-fixed.fixed .total-completion {
    max-width: 1750px;
    margin: auto;
    padding: 15px;
  }
  @media (max-width: 600px) {
    .goto-checkout-fixed.fixed .total-completion button.btn-primary {
      max-width: 150px;
      font-size: 80%;
      min-height: 40px;
    }
    .goto-checkout-fixed.fixed .total-completion {
      justify-content: space-between;
      gap: 0;
      padding: 10px;
    }
    .goto-checkout-fixed.fixed #orderTotals .forma_pagto {
      font-size: 85%;
      max-width: 130px;
      text-align: initial;
    }
    .goto-checkout-fixed.fixed #orderTotals {
      font-size: 80%;
    }
  }
</style>
<section class="cart section-cart">
  <div class="custom-container">
    <div class="content">
      {% if not cart.count > 0 %}
      <div class="empty-cart text-center">
        <div class="message">
          <span>SEU CARRINHO DE COMPRAS ESTÁ VAZIO
            <br>
            <small>CONTINUE NAVEGANDO EM NOSSA LOJA.
            </small>
          </span>
        </div>
        <a class="link-voltar" href="{{ goto.home }}">
          <button class="btn-secondary btn back" style="margin-top: 15px;">
            <i class="fa-duotone fa-arrow-left">
            </i>
            <span>Voltar
            </span>
          </button>
        </a>
      </div>
      {% else %}
      {% include 'snippets/notifications.tpl' %}
      <form id="shopping_cart" name="shopping_cart" method="post" data-element="form-cart">
        {% if list is defined and list.id > 0%}
        <div class="list-bag-message message-block bottom-arrow">
          <div class="content">
            <i class="fa-duotone fa-circle-info">
            </i>
            <span class="message">
              Você esta comprando itens de uma 
              <b>{{list.name|raw}}</b>, os itens serão enviados para o endereço do responsável por ela.
              {{ (list.message is not empty ? "<br><b>"~list.message~"</b>" : "")|raw }}
              <div class="divider">
              </div>
              <small>Não é uma compra de {{list.name|raw}}? Então 
                <a href="/cart?action=disableList" title="Desativar compra de lista">clique aqui
                </a>
              </small>
            </span>
          </div>
        </div>
        {% endif %}
        <ul id="shoppingCart">
          <li id="order_shopping_cart" class="template-cards">
            {% include 'cart/snippets/grid.tpl' %}
          </li>
          <li id="order_coupon" class="flex position-relative template-cards" justify-content="center" align-items="center">
            {% include 'cart/snippets/coupon.tpl' %}
          </li>
          <li id="order_shipping" class="template-cards">
            {% include 'cart/snippets/shipping_quote.tpl' %}
          </li>
          <li id="kits">
            {% include 'cart/snippets/kits.tpl' %}
          </li>
          <li id="descRules">
            {% include 'cart/snippets/rules.tpl' %}
          </li>
          {% if customer.discount is defined and customer.discount > 0 %}
          <li id="discountExclusive">
            {% include 'cart/snippets/exclusive_discount.tpl' %}
          </li>
          {% endif %}
        </ul>
        <div class="goto-checkout template-cards flex" align-items="center" justify-content="space-between">
          <div class="buttons-secondary">
            <a id="btn-shopping" href="{{ list is defined and list.id > 0 ? list.url : goto.home }}">
              <button alt="Continuar comprando" type="button" class="position-relative" title="Continuar comprando">
                <i class="fa-duotone fa-arrow-left">
                </i>
                <span>Continuar comprando
                </span>
              </button>
            </a>
            <a id="btn-cart-reset" href="{{goto.cart}}/?action=clear">
              <button alt="Limpar carrinho" type="button" class="position-relative" title="Limpar carrinho">
                <i class="fa-duotone fa-trash-can-xmark">
                </i>
                <span>Limpar carrinho
                </span>
              </button>
            </a>
          </div>
          <div class="goto-checkout-fixed">
            <div class="total-completion flex" wrap="true" align-items="center" justify-content="end">
              <div id="orderTotals">
                {% include 'cart/snippets/totals.tpl' %}
              </div>
              <button type="submit" class="button-style-primary btn btn-primary" border="0" alt="Realizar pedido">
                <span>
                    <i class="fa-duotone fa-check-double">
                    </i> Realizar pedido
                </span>
              </button>
            </div>
          </div>
        </div>
      </form>
      {% endif %}
    </div>
  </div>
</section>
<script>
  $(document).ready(function () {
    positionGotoCheckout();
    $(window).scroll(function () {
      positionGotoCheckout();
    }
                    );
    function positionGotoCheckout(){
      let cartTop = $(this).scrollTop() + $(window).height();
      let gotoChkTop = $("#shoppingCart").position().top + $("#shoppingCart").height() + 60;
      if (cartTop < gotoChkTop) {
        $(".goto-checkout-fixed").addClass("fixed");
      }
      else {
        $(".goto-checkout-fixed").removeClass("fixed");
      }
    }
  }
                   );
</script>
{{ banners.getByTag(["footer"]) }}
{% include("footer_small.tpl") %}