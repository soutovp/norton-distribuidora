<div class="shopping-cart-temp" data-id="cart" border="0" width="100%">
  <div class="head-cart-temp">
    <div class="content">
      <div class="remove">Remover
      </div>
      <div class="product">Produto
      </div>
      <div class="quantify">Quantidade
      </div>
      <div class="unit_value">Valor Unit
      </div>
      <div class="total_value">Valor Total
      </div>
    </div>
  </div>
  <div class="body-cart-temp">
    {% for product in cart.products %}
    <div class="content">
      <div class="remove">
        <a class="cart-remove-item" href="javascript:void(0)" onClick="shoppingCart.removeItem('{{product.id}}')">
          <button alt="" type="button" class="btn btn-secondary btn-danger" title="">
            <i class="fa-duotone fa-trash-can-xmark">
            </i>
          </button>
        </a>
      </div>
      <div class="product">
        <div class="cart-item">
          <div class="image-cart flex">
            {{product.thumb|raw}}
          </div>
          <div class="product-attribute-list">
            <div class="nome">
              <a target="_blank" href="{{product.url}}">
                <b>{{product.name|raw}}</b>
              </a>
            </div>
            {% if product.attributes is defined %}
            <div class="attribute-list">
              <div class="sku-number-reference">Referência: {{product.sku}}</div>
              <ul class="attributes-group">
                {% for attr in product.attributes %}
                <li class="attributes-item">
                  {{attr.label|raw}}:&nbsp;
                  {% if attr.type in ["radio","checkbox","select"] %}
                  <b>{{ attr.value|raw }}</b>
                  {% elseif attr.type in ["color","image"] %}
                  {{ attr.html|raw }}
                  {% endif %}
                </li>
                {% endfor %}
              </ul>
            </div>
            {% endif %}
            {% if product.custom_fields is defined %}
            <div class="product-configuration">
              <span class="configuracao">
                <img src='/imagens/icones/config_options.png' border=0 alt='Alterar configurações' style='float:left;margin-right:5px;' />
                <small>Opções de configuração: 
                  <a href='javascript:void(0);' data-fancybox data-type='ajax' data-src='/popup/produto_config.php?id_produto={{product.id}}' alt='Opções de configuração do produto' class='hiperlink'>Alterar
                  </a>
                </small>
              </span>
            </div>
            {% endif %}
            {% if product.free_shipping %}
            <div class="mark-free-shipping">
              <span>{{ variables.cms_grade_produtos.txt_tag_freeshipping |raw }}
              </span>
            </div>
            {% endif %}
            {% if product.services is defined %}
            <div class="adicionais">
              {% if product.services.gift is defined %}
              {% set gift = product.services.gift %}
              <div class="additional-cart-fields">
                {% if (gift.status == true) %}
                <a href="javascript:void(0);" onClick="shoppingCart.defineGift(false,'{{product.id}}','{{gift.card}}')" class="com-embalagem" title="Remover embalagem para presente">Remover embalagem para presente
                </a>
                {% if (gift.price>0) %}
                <span class="embalagem_preco">Com embalagem para presente: {{currency.format(gift.price)}}</span>
                {% endif %}
                {% else %}
                <a href="javascript:void(0);" onClick="shoppingCart.defineGift(true,'{{product.id}}','{{gift.card}}')" class="sem-embalagem" title="Adicionar embalagem para presente">
                  <span>Adicionar embalagem para presente
                  </span>
                </a>
                {% endif %}
                <span class="saiba_mais">
                  <a href="javascript:void(0)" onClick="abreDialog('Embalagem para Presente','/popup/p.php?page=embalagem_presente',500);" title="Saiba mais">Saiba mais
                  </a>
                </span>
              </div>
              {% endif %}
            </div>
            {% endif %}
            {% if product.kit is defined %}
            <div class="productKit">
              <ul class="kit-items">
                {% for item in product.kit %}
                <li class="kit-item">
                  <span class="name">{{item.quantity|raw}}x {{item.name|raw}}</span>
                  {% for attr in item.attributes %}
                  <span class="attr">- {{attr.label|raw}}: {{attr.value|raw}}</span>
                  {% endfor %}
                </li>
                {% endfor %}
              </ul>
            </div>
            {% endif %}
            {% for message in product.messages %}
            {{ message|raw }}
            {% endfor %}
          </div>
        </div>
      </div>
      <div class="quantify">
        {% if (product.isFree) %}
        {{ product.quantity }}
        {% else %}
        <input name="quantity[{{product.id}}]" id="quantity" min="1" class="quantitySelect" type="number" value="{{ product.quantity }}">
        {% endif %}
      </div>
      <div class="unit_value valores_produtos">
        {% if (product.price_old > product.price_unit) %}
        <s>{{currency.format(product.price_old)}}</s>
        {% endif %}
        {{currency.format(product.price_unit)}}
      </div>
      <div class="total_value valores_produtos">
        {% if (product.isFree) %}
        <i class="fa fa-gift product-gift">
        </i>
        {% else %}
        <b>{{currency.format(product.total)}}</b>
        {% endif %}
      </div>
    </div>
    {% endfor %}
  </div>
  <div id="footer-cart-temp">
    <div class="footer-subtotal-temp">
      <div class="subtotal">
        <b>Subtotal:
        </b>
      </div>
      <div class="subtotal-value">
        <b>{{currency.format(cart.subtotal)}}</b>
      </div>
    </div>
  </div>
</div>