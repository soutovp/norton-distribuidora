<style>
  #order_coupon {
    background: var(--cor-bg-blcs-gp);
    border: 1px solid var(--color-txt-20);
    height: 135px;
    padding: 20px 0;
    grid-column: 1;
    grid-row: 2;
    margin: 15px 0;
  }
  .title-coupon {
    cursor: pointer;
    max-width: 100%;
    margin: 0 auto 10px;
    padding-bottom: 5px;
  }
  .title-coupon h5 {
    color: var(--cor-txt-nome-prto);
  }
  .title-coupon h5:hover {
    color: var(--cor-txt-prc-prto);
  }
  .title-coupon h5:after {
    content: "";
    background: var(--cor-txt-prc-prto, #333);
    width: 0;
    height: 2px;
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
  .title-coupon:hover h5:after {
    width: 100%;
  }
  .body-coupon {
    visibility: hidden;
    opacity: 0;
    transition: all ease-in-out 0.3s;
  }
  .body-coupon.active {
    visibility: visible;
    opacity: 1;
    transition: all ease-in-out 0.3s;
  }
  #cupom {
    text-align: center;
    border: 1px solid var(--cor-txt-nome-prto, #000);
    width: 100%;
    height: 35px;
    border-radius: 3px;
  }
  #btn-cupom {
    position: absolute;
    right: 5%;
    top: 25%;
    background-color: transparent;
    border: none;
  }
  #cupom_message {
    top: 50%;
  }
  .discount {
    border-bottom: 1px solid;
  }
</style>
<div class="coupon-input">
  <div class="discount-coupon flex" justify-content="center" direction="column">
    <div class="title-coupon position-relative text-center">
      <h5>Possui algum cupom de desconto?
      </h5>
    </div>
    <div class="body-coupon flex" justify-content="center" wrap="true">
      <div class="input-coupon w-100 position-relative text-center">
        <input class="w-100 text-center" type="text" id="cupom" name="cupom" placeholder="Seu cupom" autocomplete="off" maxlength="50" pattern="[a-zA-Z0-9-_]+" value="{{cart.coupon.id}}">
        <button class="coupon-icon position-absolute" data-action="shoppingCart.setCoupon" data-input="input#cupom" data-type="buttonAction" alt="Utilizar cupom" class="btn btn-secondary btn-md" id="btn-cupom" title="Utilizar cupom" type="button">
          <i class="fa-duotone fa-arrow-down-to-dotted-line">
          </i>
        </button>
      </div>
    </div>
  </div>
</div> {% if cart.coupon.status == false and cart.coupon.message is defined %} 
<div id="cupom_message" class="warning text-center position-absolute">
  <i class="fa-duotone fa-triangle-exclamation">
  </i>
  <span>{{cart.coupon.message|raw}}</span>
</div> {% elseif cart.coupon == true %} 
<div id="cupom_message" class="success text-center position-absolute">
  <i class="fa-duotone fa-circle-check">
  </i>
  <span class="description">{{cart.coupon.name|raw}}</span>
  {% if cart.coupon.discount is not empty %} 
  <span class="discount">{{cart.coupon.discount|raw}}</span>
  {% endif %}
</div>
{% endif %}
<script>
  /* VALIDANOME CUSTOMER-LOGIN */
  $(document).ready(function () {
    /*Click para abrir a busca*/
    $(".title-coupon").on("click", function () {
      $(".body-coupon").toggleClass("active");
    }
                         );
  }
                   );
  /*Fim click*/
</script>    
