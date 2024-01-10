{% set paymentData = product.payment %}
{% if product.price.sale > 0 %}
{% if product.price.list > 0 and product.price.list > product.price.sale %}
<div class="price slash" data-element="list-price">{{ currency.format(product.price.list) }}</div>
{% endif %}
<div class="price" data-element="sale-price">
  <b>{{currency.format(currency.val(product.price.sale))}}</b>
</div>
<div class='installment-plan'>
  {{(paymentData.installments.best>0 ? 'ou <b>'~paymentData.installments.best~'x</b> de <b>'~currency.format(paymentData.installments.best_value)~' sem juros</b>':'')|raw}}
  {{(paymentData.installments.max>0 ? 'ou em até <b>'~paymentData.installments.max~'x</b> de <b>'~currency.format(paymentData.installments.max_value)~'</b> no cartão':'')|raw}}
  {{(paymentData.discount_rate>0 ? 'ou <b>'~currency.format(paymentData.upfront)~' à vista</b> com <b>'~paymentData.discount_rate~'%</b> de desconto':'')|raw}}
</div>
{% elseif product.id is defined %}
<a class="hiperlink" href="/fale-conosco/?pid={{ product.id }}">Consulte-nos
</a>
{% endif %}
