{% set paymentData = product.payment %}
{% if product.price.sale > 0 %}
{% if product.price.list > 0 and product.price.list > product.price.sale %}
<div class="price slash" data-element="list-price">{{ currency.format(product.price.list) }}</div>
{% endif %}



<div class="price" data-element="sale-price">
  <span style="text-decoration: line-through; font-size: 1em;">
    {{currency.format(currency.val(product.price.sale))}}
  </span>
  <span>
    {# {{ ('<span style="background-color: red; padding: 0px 4px 0px 4px;"><img src="'~variables.icones_loja.arrow~'" width="10em"></span><span style="color: red; font-weight: 600;">'~currency.format(paymentData.upfront)~'</span>'~' à vista')|raw }} #}
    {{ ('<span style="color: red; font-weight: 600;">'~currency.format(paymentData.upfront)~'</span>'~' à vista')|raw }}
  </span>
  {# {{(paymentData.discount_rate>0 ? 'ou '~currency.format(paymentData.upfront)~' à vista com '~paymentData.discount_rate~'% de desconto':'')|raw}} #}
</div>
<div class="installment-plan">
  {{(paymentData.installments.best>0 ? 'ou '~paymentData.installments.best~'x de '~currency.format(paymentData.installments.best_value)~' sem juros':'')|raw}}
  {{(paymentData.installments.max>0 ? 'ou em até '~paymentData.installments.max~'x de '~currency.format(paymentData.installments.max_value)~' no cartão':'')|raw}}
</div>
{% elseif product.id is defined %}
<a class="hiperlink" href="/fale-conosco/?pid={{ product.id }}">Consulte-nos
</a>
{% endif %}
