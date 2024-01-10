{% if (type == 'button') %}
<!-- Cart Icon -->
<span class="sidecart-items-counter flex position-absolute" align-items="center" justify-content="center">
</span>
<span class="sidecart-button">
  {#
  <i class="fa-solid fa-cart-shopping">
  </i>
  <img style="width:100%;" src="{{ variables.icones_loja.carrinho }}" alt="�cone de Carrinho">
  #}
  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 256 256">
    <path class="icons_hover_fil" fill="{{(color)|raw}}" d="M100 216a20 20 0 1 1-20-20a20 20 0 0 1 20 20m84-20a20 20 0 1 0 20 20a20 20 0 0 0-20-20m51.47-120.47l-27.29 88.7A27.87 27.87 0 0 1 181.41 184H82.93A28.13 28.13 0 0 1 56 163.69L21.81 44H12a12 12 0 0 1 0-24h12.82a20.08 20.08 0 0 1 19.23 14.51L51.34 60H224a12 12 0 0 1 11.47 15.53M207.75 84H58.19l20.89 73.1a4 4 0 0 0 3.85 2.9h98.48a4 4 0 0 0 3.83-2.82Z"/></svg>
</span>
<!--End Cart Icon -->
{% elseif (type == 'offer') %}
<!-- Cart Offer -->
<div class="cart-offer-spacer">
</div>
<div id="cart-offer" class="flex" align-items="center" justify-content="center" style="display: none;">
  <span class="incomplete-content flex" align-items="center" justify-content="center">
    Compre mais 
    <b>R$
    </b>
    <span class="amount-left">0,00
    </span> e ganhe 
    <span class="offer-text">
      <b>{{ variables.cms_config_geral.cms_offer_text|raw }}</b>
    </span>
  </span>   
  <span class="complete-content flex" align-items="center" justify-content="center">
    <i class="fa-duotone fa-party-horn">
    </i> Parab�ns! Voc� ganhou 
    <span class="offer-text">{{ variables.cms_config_geral.cms_offer_text|raw }}
    </span>! 
    <a class="finish-buy-now" href="/cart">
      <b>Conclua sua compra agora!
      </b>
    </a>
  </span>  
</div>
<style>
  /* Offer */
  {% if variables.cms_config_geral.cms_offer_value %}
  .cart-offer-spacer{
    height: 30px;
  }
  {% endif %}
  #cart-offer {
    position: fixed;
    z-index: 8;
    top: 0;
    right: 0;
    left: 0;
    height: 30px;
    line-height: 1.250;
    transition: background-color ease-in-out 300ms;
    display: none;
  }
  #cart-offer.incomplete {
    color: var(--cor-txt-bt-realce, #fff);
    background: var(--cor-realce-bt-info);
  }
  #cart-offer.complete {
    color: var(--cor-txt-bt-confirm, #fff);
    background: var(--cor-bg-bt-confirm);
  }
  #cart-offer .complete-content, #cart-offer .incomplete-content{
    gap: 5px;
    height: 100%
  }
  span.amount-left {
    font-weight: bold;
  }
  #cart-offer a {
    position: relative;
    color: var(--cor-txt-bt-confirm, #fff);
  }
  @media (max-width: 600px){
    #cart-offer {
      height: 30px;
      text-align: center;
      padding: 3px;
      display: block;
    }
    #cart-offer .complete-content, #cart-offer .incomplete-content{
      font-size: 70%;
    }
  }
  @media (max-width: 375px){
    .finish-buy-now {
      display: none;
    }
  }
  /* End Offer */
</style>
<!--End Cart Offer -->
{% elseif (type == 'body') %}
<style>
  body.flow-y {
    overflow-y: hidden;
  }
  span.sidecart-button{
    cursor: pointer;
    border: 1px solid;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 100%;
    padding: 0.625rem;
  }
  #side-cart {
    width: 100%;
    height: 100%;
    max-width: 400px;
    position: fixed;
    top: 0;
    right: 0;
    padding: 15px;
    background: var(--cor-bg-corpo);
    z-index: 10;
    transform: translateX(110%);
    transition: all ease-in-out .5s;
  }
  #side-cart.show-cart {
    transform: translateX(0);
  }
  /*cart-top*/
  #side-cart .cart-top {
    position: fixed;
    top:10px;
    right: 10px;
    left: 10px;
    height: 60px;
  }
  .cart-items-title {
    font-size: 130%;
    color: var(--cor-txt-gerais);
  }
  #side-cart #cart-items-count {
    position: absolute;
    font-size: 60%;
    background: var(--cor-txt-prc-prto);
    color: var(--cor-bg-corpo);
    border-radius: 100%;
    width: 17px;
    height: 17px;
    top: -5px;
    right: -20px;
  }
  #side-cart .close-cart {
    cursor: pointer;
    color: var(--cor-txt-gerais);
    right: 0;
    top: 0;
    font-size: 1.250em;
    opacity: 0.8;
  }
  #side-cart .close-cart:hover {
    opacity: 1;
  }
  /*End-cart-top*/
  /*cart-item-head*/
  #side-cart .cart-item-head {
    position: fixed;
    top: 70px;
    right: 10px;
    left: 10px;
    height: 40px;
    border-top: 1px solid var(--color-txt-20);
    border-bottom: 1px solid var(--color-txt-20);
    color: var(--cor-txt-gerais);
  }
  #side-cart .product, #side-cart .subtotal {
    text-transform: uppercase;
    font-size: 80%;
    font-weight: 300;
    color: var(--cor-txt-gerais);
  }
  /*End-cart-item-head*/
  /*Cart-items*/
  #side-cart .cart-body {
    position: fixed;
    overflow: auto;
    top: 110px;
    right: 10px;
    left: 10px;
    bottom: 130px;
  }
  #side-cart #cart-items {
    padding: 10px 0;
  }
  /*cart-total*/
  #side-cart .cart-total{
    border-top: 1px solid var(--cor-txt-prc-prto);
    position: fixed;
    bottom: 90px;
    right: 10px;
    left: 10px;
    height: 40px;
    background-color: var(--cor-bg-blcs-gp);
    padding: 5px;
    margin: 10px 0;
  }
  #side-cart .subtotal-name {
    text-transform: uppercase;
    font-size: 90%;
    font-weight: 500;
    color: var(--cor-txt-prc-prto);
  }
  #side-cart .price-total {
    font-weight: 700;
    font-size: 1.4rem;
    color: var(--cor-txt-prc-prto);
  }
  /*End-cart-total*/
  /*cart-empty*/
  #side-cart .cart-empty {
    font-size: 90%;
    font-weight: 300;
    text-align: center;
    color: var(--cor-txt-gerais);
    position: fixed;
    top: 120px;
    bottom: 110px;
    left: 10px;
    right: 10px;
    display: flex;
    flex-direction: column;
    gap: 10px;
    justify-content: center;
  }
  /*End-cart-empty*/
  /*cart-footer*/
  #side-cart .cart-footer {
    position: absolute;
    bottom: 10px;
    left: 10px;
    right: 10px;
    height: 80px;
  }
  #side-cart .go-cart {
    font-size: 70%;
    font-weight: 500;
    position: relative;
    color: var(--cor-txt-gerais);
    gap: 5px;
  }
  #side-cart .go-cart:after {
    content: '';
    background: var(--cor-txt-rodape, #555);
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
  #side-cart .go-cart:hover:after {
    width: 100%;
    color: var(--cor-txt-gerais);
  }
  #side-cart #cart-max-items .go-cart {
    margin: 10px;
    opacity: 0.5;
  }
  #side-cart #cart-max-items .go-cart:hover{
    opacity: 1;
  }
  #side-cart .pull-footer {
    gap: 10px;
  }
  /*End-cart-footer*/
  /*BackDrop*/
  .backdrop {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 9;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
  }
  /*Sidenav-header*/
  .cart-items-title span.sidecart-items-counter {
    top: -5px;
    right: -15px;
  }
  span.sidecart-items-counter {
    /*
    line-height: 1.250;
    */
    top: 2.5rem;
    right: -0.625rem;
    font-size: 0.750em;
    border-radius: 100%;
    width: 2rem;
    height: 2rem;
    /*
    background: var(--cor-bg-bt-confirm,#4caf50);
    color: var(--cor-txt-bt-confirm,#fff);
    */
    background: #000;
    color: #FFF;
  }
  @media (max-width: 1000px) {
    .header-body span.sidecart-items-counter {
      top: -0.3125rem;
      right: -0.3125rem;
    }
    span.sidecart-button {
      width: 1.875rem;
      height: 1.875rem;
      font-size: 0.8750em;
    }
  }
  @media (max-width: 600px) {
    .header-body.fixed {
      height: auto;
    }
    .header-body span.sidecart-items-counter {
      top: -0.3125rem;
      right: -0.3125rem;
      width: 0.9375rem;
      height: 0.9375rem;
      font-size: 0.6250em;
    }
    .header-body span.sidecart-button {
      width: 1.5625rem;
      height: 1.5625rem;
      font-size: 0.75em;
    }
  }
  /*End-Sidenav-Header*/
</style>
<div id="side-cart">
  <div class="cart-top flex" align-items="center" justify-content="space-between">
    <div class="cart-items-title">
      <div class="flex position-relative">Itens na sacola 
        <span class="sidecart-items-counter flex position-absolute" align-items="center" justify-content="center">0
        </span>
      </div>
    </div>
    <div class="close-cart flex position-absolute" id="close" align-items="center" justify-content="center">
      <i class="fa-duotone fa-circle-xmark">
      </i>
    </div>
  </div>
  <div class="cart-item-head flex" align-items="center" justify-content="space-between">
    <div class="product">
      <span>Produto
      </span>
    </div>
    <div class="subtotal">
      <span>Subtotal
      </span>
    </div>
  </div>
  <div class="cart-body">
    <div id="cart-items">
      {% include 'cart/snippets/sidecart_item.tpl' %}
    </div>
    <div id="cart-max-items" class="flex" justify-content="center" align-items="center" style="display: none;">
      <a href="/cart" class="go-cart flex">
        exibindo
        <span>0
        </span>de
        <span>0
        </span>produtos - ver todos
      </a>
    </div>    
  </div>
  <div class="cart-total flex" justify-content="space-between" align-items="center">
    <div class="subtotal-name">Total
    </div>
    <div class="price-total">R$ 
      <span id="cart-total-value">0,00
      </span>
    </div>
  </div>
  <div class="cart-empty">O CARRINHO DE COMPRAS EST� VAZIO.
    <i class="fa-thin fa-face-frown fa-2x">
    </i>
  </div>
  <div class="cart-footer">
    <div class="pull-footer flex" justify-content="center" direction="column" align-items="center">
      <a href="/checkout" class="finish-order flex button-style-primary btn btn-primary" align-items="center" justify-content="center">
        <span>
          <i class="fa-duotone fa-check-double">
          </i> REALIZAR PEDIDO
        </span>
      </a> 
      <a href="/cart" class="go-cart flex undereffect" align-items="center" justify-content="center">ir para o carrinho
      </a>
    </div>
  </div>
</div>
<div class="overlay">
</div>
<script>   
  $(document).ready(function () {
    consoleDebug("sidecart","init");
    $(".sidecart-button, .overlay, #side-cart .close-cart").on("click", function (event) {
      toggleSideCart();
      event.stopPropagation();
    }
                                                              );
    cartRequest();
  }
                   );
  /* SHOW / HIDE SIDECART FUNCTIONS */
  function toggleSideCart(){
    if ($("#side-cart").hasClass("show-cart"))
      hideSideCart();
    else showSideCart();
  }
  function showSideCart(){
    closeFancybox();
    $("#side-cart").addClass("show-cart");
    $(".overlay").addClass("backdrop");
    $("body").addClass("flow-y");
    autohideSideCart(3000);
  }
  function hideSideCart(){
    $("#side-cart").removeClass("show-cart");
    $(".overlay").removeClass("backdrop");
    $("body").removeClass("flow-y");
  }
  function autohideSideCart(delay){
    if (window.matchMedia('(max-width: 700px)').matches) {
      return
    }
    if (delay > 0)
      setTimeout(function () {
        autohideSideCart();
      }
                 , delay);
    else if ($("#side-cart").is(':hover'))
      setTimeout(function () {
        autohideSideCart();
      }
                 , 1000);
    else
      hideSideCart();
  }
  /* END SHOW / HIDE SIDECART FUNCTIONS */
  async function addedToCart(showSidecart){
    consoleDebug("sidecart","addedToCart");
    cartRequest();
    if (showSidecart)
      showSideCart();
    /*await shoppingCart.added(elem, response, textStatus, jqXHR);*/
  }
  function cartRequest(url = "/cart/update", data = null) {
    consoleDebug("sidecart","cartRequest");
    return new Promise((resolve, reject) => {
      $.ajax({
        type: "POST",
        url,
        processData: !1,
        contentType: !1,
        data,
        headers: {
          ajaxSubmit: true,
        }
        ,
        success: function (response) {
          consoleDebug("sidecart","cartRequest",response);
          refreshCartItems(response);
          if (response.change_url && url != "/cart/update") {
            const destinyUrl = response.url;
            const [, destinyPath] = destinyUrl.split(window.location.origin);
            if (!destinyPath.includes("/cart")) {
              return reject(response);
            }
            resolve(response);
          }
          resolve(response);
        }
        ,
        error: function (error) {
          reject(error);
        }
        ,
      }
            );
    }
                      );
  }
  function refreshCartItems(data){
    consoleDebug("sidecart","refreshCartItems");
    /* Empty Cart Items */
    cleanCartItems();
    /* Limit 10 items */
    const maxCartProducts = 10;
    $(".sidecart-items-counter").html(data.cartItemsCount);
    $("#cart-total-value").html(FormataMoeda(parseFloat(data.orderTotalValue),1));
    if (data.cartItemsCount > 0){
      const items = data.cart.items;
      let productsCount = 0;
      let totalProductsCount = 0;
      for (const [key, item] of Object.entries(items)) {
        totalProductsCount++;
        if (totalProductsCount > maxCartProducts) continue;
        productsCount++;
        /* Get item data */
        const productHasAttributes = /{d+}/.test(key);
        const last = (productsCount == Object.keys(items).length) ? 'last' : '';
        let   pid = isNaN(key) ? key : Number(key);
        const subtotal = item.price * item.quantity;
        /*Update product info*/
        $("#cart-items").append('<div id="item-'+pid+'" class="item-info flex '+last+'" justify-content="space-between"></div>');
        $("#item-"+$.escapeSelector(pid)).html($("#item-blank").html());
        $("#item-"+$.escapeSelector(pid)+" #item-img img")[0].src=item.image;
        $("#item-"+$.escapeSelector(pid)+" #item-name").html(item.name);
        $("#item-"+$.escapeSelector(pid)+" #item-price").html("R$ " + FormataMoeda(parseFloat(item.price),1));
        $("#item-"+$.escapeSelector(pid)+" #item-subtotal").html("R$ " + FormataMoeda(parseFloat(subtotal),1));
        /*Update quantity handling components*/
        const inputQty = $('#item-'+$.escapeSelector(pid)).find("input[id='quantity[0]']")[0];
        inputQty.name = "quantity["+pid+"]";
        inputQty.value = item.quantity;
        inputQty.onblur = function() {
          updateItemQty(pid, inputQty.value);
        };
        inputQty.addEventListener('keypress', function( e ) {
          if (event.keyCode == '13') updateItemQty(pid, inputQty.value);
        }
                                  , false);
        inputQty.id = "quantity["+pid+"]";
        $("#item-"+$.escapeSelector(pid)+" .item-delete")[0].id = pid;
        $("#item-"+$.escapeSelector(pid)+" .item-delete")[0].onclick = function() {
          deleteCartItem(pid);
        };
        $("#item-"+$.escapeSelector(pid)+" .plus")[0].onclick = function() {
          addItemQty(pid, 1);
        };
        $("#item-"+$.escapeSelector(pid)+" .minus")[0].onclick = function() {
          removeItemQty(pid, 1);
        };
      }
      if (totalProductsCount > maxCartProducts){
        consoleDebug("sidecart", "refreshCartItems", "maxCartProducts = " + maxCartProducts);
        consoleDebug("sidecart", "refreshCartItems", "productsCount = " + productsCount);
        consoleDebug("sidecart", "refreshCartItems", "data.cartItemsCount = " + data.cartItemsCount);
        $("#cart-max-items a span").eq(0).html(productsCount);
        $("#cart-max-items a span").eq(1).html(totalProductsCount);
        $("#cart-max-items").show();
      }
      else $("#cart-max-items").hide();
    }
    /* show / hide cart items */
    consoleDebug("sidecart", "refreshCartItems", data.cartItemsCount);
    $('#side-cart .cart-item-head')[0].style.visibility  = data.cartItemsCount <= 0 ? "hidden" : "visible";
    $('#side-cart .cart-total')[0].style.visibility      = data.cartItemsCount <= 0 ? "hidden" : "visible";
    $('#side-cart .finish-order')[0].style.visibility    = data.cartItemsCount <= 0 ? "hidden" : "visible";
    $('#side-cart .cart-empty')[0].style.visibility      = data.cartItemsCount  > 0 ? "hidden" : "visible";
    refreshPageItems(data);
    refreshCartOffer(data.orderTotalValue);
  }
  function refreshPageItems(data){
    consoleDebug("sidecart","refreshPageItems");
    if (data.cartItemsCount > 0 && $(".home-page").length){
      /* Refresh Page Items Card */
    }
  }
  function refreshCartOffer(cartTotal){
    const offerValue = isNaN({{ variables.cms_config_geral.cms_offer_value }}) ? 0 : {{ variables.cms_config_geral.cms_offer_value }};
    if (offerValue == 0) {
      $("#cart-offer").hide();
      $(".cart-offer-spacer").hide();
      return;
    }
    const amountLeft = offerValue - cartTotal;
    consoleDebug("sidecart","refreshCartOffer("+cartTotal+")", "offerValue = " + offerValue + " | amountLeft = " + amountLeft);
    if (amountLeft > 0) {
      $("#cart-offer").addClass("incomplete");
      $("#cart-offer .incomplete-content").show();
      $("#cart-offer").removeClass("complete");
      $("#cart-offer .complete-content").hide();
      $("#cart-offer .incomplete-content .amount-left").html(FormataMoeda(parseFloat(amountLeft),1));
    }
    else {
      $("#cart-offer").removeClass("incomplete");
      $("#cart-offer .incomplete-content").hide();
      $("#cart-offer").addClass("complete");
      $("#cart-offer .complete-content").show();
    }
    $("#cart-offer").show();
    $(".cart-offer-spacer").show();
  }
  function cleanCartItems(){
    consoleDebug("sidecart","cleanCartItems");
    $(".item-info").each(function (index, element) {
      if (element.id != 'item-blank')
        element.remove();
    }
                        );
  }
  async function deleteCartItem(pid = null){
    consoleDebug("sidecart","deleteCartItem("+pid+")");
    if (pid){
      const data = new FormData();
      data.set("pid", pid);
      await cartRequest("/?action=remove_product", data);
    }
  }
  function addItemQty(pid, qty){
    consoleDebug("sidecart","addItemQty");
    currentQty = $("#item-"+$.escapeSelector(pid)).find("input[id='quantity["+pid+"]']")[0].value;
    currentQty = isNaN(currentQty) ? 0 : Number(currentQty);
    newQty = currentQty + qty;
    updateItemQty(pid, newQty);
  }
  function removeItemQty(pid, qty){
    consoleDebug("sidecart","removeItemQty");
    currentQty = $("#item-"+$.escapeSelector(pid)).find("input[id='quantity["+pid+"]']")[0].value;
    currentQty = isNaN(currentQty) ? 0 : Number(currentQty);
    newQty = currentQty - qty;
    updateItemQty(pid, newQty);
  }
  async function updateItemQty(pid, qty){
    consoleDebug("sidecart","updateItemQty");
    if (pid){
      if (qty <= 0) 
        deleteCartItem(pid);
      else {
        const data = new FormData();
        data.set("quantity["+pid+"]", qty);
        await cartRequest("/cart/update", data);
      }
    }
  }
  async function emptyCartItems(){
    consoleDebug("sidecart","emptyCartItems");
    $("#cart-items .item-info").each(async function (index, element) {
      const pid = $(element).attr("pid");
      await deleteCartItem(pid);
    }
                                    );
  }
  /* BUY / ADD TO CART FUNCTIONS */
  function cartBuyNow(pid, qty){
    consoleDebug("sidecart","buyNow");
    shoppingCart.add(
      {
        id_produto: pid, quantity: qty}
      ,
      function (result) {
        console.log(result);
        shoppingCart.added(result);
        if (result.error) alert(result.error);
        else if (result.change_url) redireciona(result.url);
        else {
          redireciona("/goto/checkout");
        }
      }
    );
  }
  function addToCart(pid, qty){
    consoleDebug("sidecart","addToCart");
    shoppingCart.add({
      id_produto: pid, quantity: qty}
                     , shoppingCart.added);
  }
  /* END - BUY / ADD TO CART FUNCTIONS */  
</script>
{% endif %}
