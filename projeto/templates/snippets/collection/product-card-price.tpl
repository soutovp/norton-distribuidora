{% set paymentData = product.payment %}
{% if product.price.sale > 0 %}
{% if product.price.list > 0 and product.price.list > product.price.sale %}
<div class="price slash" data-element="list-price">{{ currency.format(product.price.list) }}</div>
{% endif %}
<div class="price" data-element="sale-price">{{currency.format(currency.val(product.price.sale))}}</div>
<div class="installment-plan">
  {{(paymentData.installments.best>0 ? 'ou '~paymentData.installments.best~'x de '~currency.format(paymentData.installments.best_value)~' sem juros':'')|raw}}
  {{(paymentData.installments.max>0 ? 'ou em até '~paymentData.installments.max~'x de '~currency.format(paymentData.installments.max_value)~' no cartão':'')|raw}}
  {{(paymentData.discount_rate>0 ? 'ou '~currency.format(paymentData.upfront)~' à vista com '~paymentData.discount_rate~'% de desconto':'')|raw}}
</div>
{% elseif product.id is defined %}
<a class="hiperlink" href="/fale-conosco/?pid={{ product.id }}">Consulte-nos
</a>
{% endif %}
