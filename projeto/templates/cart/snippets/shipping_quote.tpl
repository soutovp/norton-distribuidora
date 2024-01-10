<style>
    section.section-cart ul#shoppingCart li#order_shipping {
      grid-column: 2;
      grid-row: 2;
      background: var(--cor-bg-blcs-gp);
      border: 1px solid var(--color-txt-20);
      padding: 30px 0;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 15px 0;
    }
    li#order_shipping .title-freight-calculation h5 {
      text-align: center;
      margin-bottom: 10px;
      color: var(--cor-txt-nome-prto, #000);
    }
    .body-freight-calculation {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 10px;
    }
    .body-freight-calculation input#cep {
      padding: 10px;
      width: 170px;
      height: 40px;
      border-radius: 3px;
      display: inline-block;
      vertical-align: middle;
      text-transform: uppercase;
      border: 1px solid var(--color-txt-20);
    }
    .button-freight-calculation {
      top: 30%;
      right: 10px;
    }
    .button-freight-calculation #btn-calc-frete {
      color: #333;
    }
    .assign-zip-code .link-zip-code {
      color: var(--cor-txt-nome-prto);
      opacity: 0.8;
    }
    .assign-zip-code a:hover {
      color: var(--cor-txt-nome-prto);
      opacity: 1;
    }
    .assign-zip-code a::after {
      content: "";
      background: var(--cor-txt-prc-prto, #333);
      width: 0;
      height: 1px;
      left: 0;
      right: 0;
      bottom: -3px;
      margin: auto;
      display: block;
      position: absolute;
      margin-top: 5px;
      transition: all 350ms ease-out 0s;
      -moz-transition: all 350ms ease-out 0s;
      -o-transition: all 350ms ease-out 0s;
      -webkit-transition: all 350ms ease-out 0s;
    }
    .assign-zip-code:hover a:after {
      width: 100%;
    }
    .shopping-cart-shipping dl.shippingMethods {
      margin-top: 10px;
      text-align: initial;
      white-space: unset;
    }
    .shopping-cart-shipping dl.shippingMethods dd {
      margin-bottom: 20px;
      text-align: initial;
    }
    .shopping-cart-shipping dl.shippingMethods dd div {
      display: grid;
      grid-template-columns: 1fr 91px 27px;
      gap: 0 5px;
    }
    .shopping-cart-shipping dl .shippingformError, .shopping-cart-shipping dl .shippingformError div {
      display: block !important;
    }
    .shopping-cart-shipping dl.shippingMethods dd div span.title p {
      display: block;
      margin-bottom: 5px;
      font-size: 0.875em;
    }
    .shippingMethods dd div span span.desc {
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      white-space: normal;
      padding: 0;
      margin: 0;
      font-size: 0.875em;
    }
    .shippingMethods dd div span small, .shippingMethods dd div span span.desc {
      display: block;
      margin: 2px 0;
      padding: 0;
      word-break: initial;
      white-space: break-spaces;
    }
    .shopping-cart-shipping dl.shippingMethods span.price {
      font-size: 0.875em;
    }
    .shopping-cart-shipping dl.shippingMethods span.check input#shipping {
      margin: 0;
    }
    @media (max-width: 600px) {
      section.section-cart ul#shoppingCart li#order_shipping {
        margin-top: 40px;
      }
    }
  </style>
  <div class="shopping-cart-shipping">
    <div class="title-freight-calculation">
      <h5>Informe o CEP do endereço de entrega:
      </h5>
    </div>
    <div class="body-freight-calculation">
      <div class="input-freight-calculation position-relative">
        <input type="postcode" name="cep" id="cep" class="campo_texto" data-mask="00000-000" placeholder="00000-000" value="{{cart.delivery.postcode}}">
        <div class="button-freight-calculation position-absolute">
          <a id="btn-calc-frete" data-action="shoppingCart.getShipping" data-result=".shippingMethods" data-input="input#cep" data-type="buttonAction" title="Calcular frete">
            <i class="fa-duotone fa-magnifying-glass-location">
            </i>
          </a>
        </div>
      </div>
      <div class="assign-zip-code position-relative">
        <a target="_blank" href="https://buscacepinter.correios.com.br/app/endereco/index.php" class="link-zip-code">
          Não lembro meu CEP 
          <i class="fa-duotone fa-magnifying-glass-location">
          </i>
        </a>
      </div>
    </div>
    <dl class="shippingMethods" style="display:none;">
    </dl>
  </div>