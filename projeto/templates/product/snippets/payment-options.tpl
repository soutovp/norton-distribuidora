{% if product.payment.options|length > 0 %}
<style>
div#box-product-payment-methods ul.tablist li.accordion-group div.accordion-heading .accordion-toggle .label-left {
    line-height: 21px;
    text-align: left;
}
  div#box-product-payment-methods ul.tablist li.accordion-group div.accordion-heading .accordion-toggle {
    display: flex;
    justify-content: space-between;
    font-size: 75%;
  }
  div#box-product-payment-methods ul.tablist li.accordion-group div.accordion-heading .accordion-toggle .label-right {
    text-align: end;
    width: 40%;
  }
  div#box-product-payment-methods ul.tablist li.accordion-group div.accordion-body div.accordion-inner ul.module-others li {
    display: flex;
    font-size: .8em;
    line-height: 22px;
    padding: 3px 0;
    justify-content: space-between;
    gap: 10px;
  }
  .option-value {
    text-align: initial;
  }
</style>
<div id="box-product-payment-methods" data-element="product-payment-methods">
  <ul class="tablist" role="tablist" aria-multiselectable="true">
    {% if product.payment.options["pix"]|length > 0 %}
    {% set paymentOption = product.payment.options["pix"] %}
    <li class="accordion-group" id="pix">
      <div class="accordion-heading" role="tab">
        <div class="accordion-toggle">
          <span class="label-left">
            <img src="/imagens/modulos/payment/pix.svg" border="0">
          </span>
          <span class="label-right">{{paymentOption.value|raw}}</span>
        </div>
      </div>
    </li>
    {% endif %}
    {% if product.payment.options["boleto"]|length > 0 %}
    {% set paymentOption = product.payment.options["boleto"] %}
    <li class="accordion-group" id="boleto">
      <div class="accordion-heading" role="tab">
        <div class="accordion-toggle">
          <span class="label-left">
            <i class="fal fa-barcode-alt">
            </i>
            <span>Boleto Bancário
            </span>
          </span>
          <span class="label-right">{{paymentOption.value|raw}}</span>
        </div>
      </div>
    </li>
    {% endif %}
    {% if product.payment.options["credito"]|length > 0 %}
    {% set paymentOptions = product.payment.options["credito"] %}
    <li class="accordion-group" id="credito">
      <div class="accordion-heading" role="tab">
        <a class="accordion-toggle collapsed" data-target="#collapse_credito" data-parent="#box-product-payment-methods ul.tablist" data-toggle="collapse" aria-expanded="true">
          <span class="label-left">{{paymentOptions["brands"]|join("")|raw}}</span>
          <span class="label-right drop-down">
            <span>Parcelas
            </span>
            <i class="fas fa-caret-down icon-down">
            </i>
            <i class="fas fa-caret-up icon-up">
            </i>
          </span>
        </a>
      </div>
      <div class="accordion-body choice collapse " role="tabpanel" aria-labelledby="credito" id="collapse_credito" aria-expanded="true">
        <div class="accordion-inner">
          <ul class="module-installments">
            {% for n,installment in paymentOptions["installments"] %}
            <li>
              <span class="number">{{n}}x
              </span>de
              <span class="value">{{currency.format(installment.value)}}</span>{{ installment.tax==false?'sem juros':'' }}</li>
            {% endfor %}
          </ul>
        </div>
      </div>
    </li>
    {% endif %}
    {% if product.payment.options["transferencia"]|length > 0 %}
    {% set paymentOption = product.payment.options["transferencia"] %}
    <li class="accordion-group" id="transferencia">
      <div class="accordion-heading" role="tab">
        <div class="accordion-toggle">
          <span class="label-left">
            <i class="fal fa-hand-holding-usd">
            </i>
            <span>Transferência Bancária
            </span>
          </span>
          <span class="label-right">{{paymentOption.value|raw}}</span>
        </div>
      </div>
    </li>
    {% endif %}
    {% if product.payment.options["deposito"]|length > 0 %}
    {% set paymentOption = product.payment.options["deposito"] %}
    <li class="accordion-group" id="deposito">
      <div class="accordion-heading" role="tab">
        <div class="accordion-toggle">
          <span class="label-left">
            <i class="fal fa-envelope-open-dollar">
            </i>
            <span>Depósito Bancário
            </span>
          </span>
          <span class="label-right">{{paymentOption.value|raw}}</span>
        </div>
      </div>
    </li>
    {% endif %}
    {% if product.payment.options["outros"]|length > 0 %}
    {% set paymentOption = product.payment.options["outros"] %}
    <li class="accordion-group" id="outros">
      <div class="accordion-heading" role="tab">
        <a class="accordion-toggle collapsed" data-target="#collapse_outros" data-parent="#box-product-payment-methods ul.tablist" data-toggle="collapse" aria-expanded="true">
          <span class="label-left">
            <i class="fal fa-hand-holding-usd">
            </i>
            <span>Opções de pagamento
            </span>
          </span>
          <span class="label-right drop-down">
            <span>Detalhes
            </span>
            <i class="fas fa-caret-down icon-down">
            </i>
            <i class="fas fa-caret-up icon-up">
            </i>
          </span>
        </a>
      </div>
      <div class="accordion-body choice collapse" role="tabpanel" aria-labelledby="outros" id="collapse_outros" aria-expanded="true">
        <div class="accordion-inner">
          <ul class="module-others">
            {% for option in paymentOption.options %}
            <li class="flex" justify-content="space-between">
              <span>{{option.label|raw}}</span>
              <span class="option-value">{{option.value|raw}}</span>
            </li>
            {% endfor %}
          </ul>
        </div>
      </div>
    </li>
    {% endif %}
  </ul>
</div>
{% endif %}
