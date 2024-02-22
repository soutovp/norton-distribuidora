<style>
  .norton-preco-normal-size{
    font-size: 2em;
  }
</style>
{% set paymentData = product.payment %}
{% if product.price.sale > 0 %}
{% if product.price.list > 0 and product.price.list > product.price.sale %}
  <div class="price slash" data-element="list-price">{{ currency.format(product.price.list) }}</div>
{% endif %}
  <br>
<div class='installment-plan'>
  <div class="price" data-element="sale-price">
    {{('<b>'~currency.format(currency.val(product.price.sale))~'</b>')|raw}}
    {{ ('<b>'~'<span><img src="'~variables.icones_loja.arrow~'" width="15em"></span>'~paymentData.discount_rate~'%</b>')|raw }}
  </div>
  
  <br>

  {{ ('<b style="font-size: 5em;">'~currency.format(paymentData.upfront)~'</b> <span style="font-size:1.5em;">à vista</span>')|raw}}

  <br>

  {% if paymentData.installments.max > 0 %}
    {{('<span style="font-size: 1.5em;">Ou</span> '~'<b style="font-size: 1.5em;">'~paymentData.installments.max~'x</b> <b style="font-size: 1.5em;">'~currency.format(paymentData.installments.max_value)~'</b> <span style="font-size: 1.5em;">no cartão</span><br>')|raw}}
  {% endif %}
    
  {% if paymentData.installments.max <= 0 and paymentData.discount_rate <= 0%}
    {% if paymentData.installments.best > 0 %}
      {{('ou '~'<b style="font-size: 2.5em; display: block;">'~paymentData.installments.best~'x</b> de <b style="font-size: 5em;">'~currency.format(paymentData.installments.best_value)~' sem juros</b>')|raw}}
    {% endif %}
  {% elseif payment.installments.best > 0 %}
    {{('ou '~'<b style="font-size: 2em">'~paymentData.installments.best~'x</b> de <b style="font-size: 2em">'~currency.format(paymentData.installments.best_value)~' sem juros</b>')|raw}}
    {# {{(paymentData.installments.best>0 ? '<b style="font-size: 5em; display: block;">'~paymentData.installments.best~'x</b> de <b style="font-size: 2.5em;">'~currency.format(paymentData.installments.best_value)~' sem juros</b>':'')|raw}} #}
  {% endif %}
  
  {# {% if paymentData.discount_rate %}
    {% if paymentData.installments.max > 0%}
      {{('<b>'~currency.format(paymentData.upfront)~' </b>à vista com <b>'~paymentData.discount_rate~'%</b> de desconto')|raw}}
    {% else %}
      {{('<b style="font-size: 5em;">'~currency.format(paymentData.upfront)~' </b>à vista com <b style="font-size: 2.5em;">'~paymentData.discount_rate~'%</b> de desconto')|raw}}
    {% endif %}
  {% endif %} #}
        
        
        {# {{(paymentData.discount_rate>0 ? '<b style="font-size: 5em;">'~currency.format(paymentData.upfront)~' </b>à vista com <b style="font-size: 2.5em;">'~paymentData.discount_rate~'%</b> de desconto':'')|raw}} #}

  {# {% if paymentData.installments.best > 0 %}
    {% if paymentData.installments.max > 0 and paymentData.discount_rate > 0 %}
      {{('<b style="font-size: 5em;">'~currency.format(paymentData.upfront)~' </b>à vista com <b style="font-size: 2.5em;">'~paymentData.discount_rate~'%</b> de desconto')|raw}}
    {% else %}
      {{('<b style="font-size: 5em;">'~currency.format(paymentData.upfront)~' </b>à vista com <b style="font-size: 2.5em;">'~paymentData.discount_rate~'%</b> de desconto')|raw}}
    {% endif %}
  {% else %}
    {{('<b style="font-size: 5em;">'~currency.format(paymentData.upfront)~' </b>à vista com <b style="font-size: 2.5em;">'~paymentData.discount_rate~'%</b> de desconto')|raw}}
  {% endif %} #}
</div>
{% elseif product.id is defined %}
<a class="hiperlink" href="/fale-conosco/?pid={{ product.id }}">Consulte-nos
</a>
{% endif %}
{#<style>
  section.product-page .currentPrice > .installment-plan > b:first-of-type{
    font-size: 5em;
    display: block;
  }
  section.product-page .currentPrice > .installment-plan > b:nth-of-type(2){
    font-size: 2.5em;
  }
</style>#}