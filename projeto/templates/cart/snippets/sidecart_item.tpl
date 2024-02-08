<style>
  .header-body .header-cart-navigation {
    position: relative;
  }
  #item-blank{
    display: none;
  }
  #side-cart .item-left {
    gap: 5px;
    min-width: 80px;
    max-width: 80px;
  }
  #side-cart .item-info{
    gap: 10px;
    padding: 10px;
    transition: all ease-in-out .3s;
    background-color: var(--cor-bg-blcs-gp, #fff);
    margin-bottom: 10px;
  }
  #side-cart .item-info:hover {
    box-shadow: rgb(60 64 67 / 30%) 0px 1px 2px 0px, rgb(60 64 67 / 15%) 0px 2px 6px 2px;
  }
  #side-cart .item-info.last{
    border-bottom: none;
  }
  #side-cart #item-img {
    min-height: 80px;
  }
  #side-cart #item-name {
    /*color: var(--cor-txt-nome-prto);*/
    color: red;
    margin-bottom: 5px;
    font-size: 80%;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    line-height: 1.52947;
    font-weight: 500;
    min-height: 40px;
    max-height: 40px;
    opacity: 0.9;
  }
  #side-cart #item-price {
    font-size: 70%;
    font-weight: 400;
    color: var(--cor-txt-prc-prto);
  }
  #side-cart .item-delete i {
    cursor: pointer;
    color: var(--cor-txt-nome-prto);
    opacity: 0.6;
  }
  #side-cart .item-delete i:hover {
    opacity: 1;
  }
  side-cart .prod-quantity-cart {
    max-width: 60%;
  }
  #side-cart .prod-quantity-cart button {
    cursor: pointer;
    border: 0;
    width: 45%;
    color: var(--cor-txt-prc-prto);
    background: transparent;
    max-height: 100px;
    height: 21px;
    padding: 0;
  }
  #side-cart .prod-quantity-cart button i {
    font-size: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  #side-cart .prod-quantity-cart input {
    border: none;
    margin: 0;
    padding: 0;
    color: #666;
    border-radius: 0;
    font-size: 75%;
    font-weight: 500;
    width: 45%;
  }
  #side-cart .prod-quantity-cart input:focus-visible {
    outline: none;
  }
  #side-cart .prod-quantity-cart {
    max-width: 150px;
    width: 150px;
    height: 25px;
  }
  #side-cart .item-right {
    min-width: 100px;
    max-width: 100px;
    align-items: end;
    margin-right: 5px;
  }
  #side-cart #item-subtotal {
    font-size: 125%;
    font-weight: 400;
    color: var(--cor-txt-prc-prto);
  }
  #side-cart .color-attr {
    color: var(--cor-txt-nome-prto);
  }
  #side-cart .item-cart-attr .color {
    width: 15px;
    height: 15px;
    border-color: var(--cor-txt-prc-prto);
    border-radius: 100%;
    border-width: 1px;
  }
  #side-cart .item-cart-attr {
    font-size: 65%;
    font-weight: 300;
    gap: 5px;
    color: var(--cor-txt-prc-prto);
  }
  img.atribute-img {
    max-width: 40px;
    height: auto;
  }
</style>
<div id="item-blank" class="item-info flex" justify-content="space-between">
  <div class="item-left flex" direction="column">
    <div id="item-img">
      <img src="#" height="auto" width="70">
    </div>
    <div class="item-content flex">
      <div id="item-price">
      </div>
    </div>
  </div>
  <div class="item-middle flex" direction="column" justify-content="space-between" align-items="center">
    <div id="item-name">
    </div>
    <div class="prod-quantity-cart flex" justify-content="space-between" align-items="center">
      <button class="minus">
        <i class="data-fa-i2svg=">
          <svg class="svg-inline--fa fa-minus fa-w-14" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="minus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="">
            <path fill="currentColor" d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z">
            </path>
          </svg>
        </i>
      </button>
      <input autocomplete="none" name="quantity[0]" id="quantity[0]" class="quantitySelect" type="number" value="12" step="1" min="1" max="99999">
      <button class="plus">
        <i class="" data-fa-i2svg="">
          <svg class="svg-inline--fa fa-plus fa-w-14" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="">
            <path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z">
            </path>
          </svg>
        </i>
      </button>
    </div>
  </div>
  <div class="item-right flex" justify-content="space-between" direction="column">
    <div class="item-delete">
      <i class="fa-duotone fa-trash-can-xmark">
      </i>
    </div>
    <div id="item-subtotal">
    </div>
  </div>
</div>
