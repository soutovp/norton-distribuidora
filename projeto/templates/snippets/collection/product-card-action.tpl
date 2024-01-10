{% if variables.cms_grade_produtos.cms_botao_comprar is empty or product.attributes is defined or actionType == 'linked' %}
<a href="javascript:void(0)" onclick="closeFancybox();" title="{{product.name|raw}}" class="flex product-link h-100 w-100 position-relative" align-items="center" justify-space="between" direction="{{card_direction}}" data-fancybox data-type="ajax" data-src="{{product.url}}?quickview=true">
  {% if (product.quantity_select.status) %}
  <div class="empty-block">
  </div>
  {% endif %}
  <button class="btn-secondary button-style-secondary btn h-100 w-100">
    <span>
      <i class="fas fa-eye">
      </i> Veja mais
    </span>
  </button>
</a>
{% else %}
<form data-element="form-ajax" data-callback="shoppingCart.added" method="post" action="/cart/add" name="f-add-cart" id="f-add-cart-{{product.id}}" class="flex text-center h-100 w-100" direction="column" align-items="center">
  <input type="hidden" name="pid" value="{{product.id}}">
  <div class="card-product-attributes">
    {% if product.attributes is defined %}
    {% set attributes = product.attributes %}
    {% include 'product/snippets/attributes.tpl' %}
    {% endif %}
  </div>
  {% if (product.quantity_select.status) %}
  <input name="quantity" id="quantity" class="quantitySelect" type="number" value="{{ product.quantity_select.min }}" step="1" min="{{ product.quantity_select.min }}" max="{{ product.quantity_select.max }}">
  {% endif %}
  <button alt="Comprar" type="submit" onclick="closeFancybox();" class="button-style-primary btn btn-primary btn-lg bt-buy w-100" title="Comprar">
    <span>
      <i class="fa-duotone fa-cart-circle-plus">
      </i> Comprar
    </span>
  </button>
</form>
{% endif %}
