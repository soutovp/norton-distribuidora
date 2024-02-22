{% set card_direction = paginate.type is defined and paginate.type=="list"?"row":"column"%}
{% set image_default = product.gallery.images|first  %}
{% set secondary_image = false %}
{% if product.gallery.hover and product.gallery.images[1] %}
{% set secondary_image = product.gallery.images[1] %}
{% endif %}
{% set discount = (100 - ((product.price.sale / product.price.list)*100))|round %}
<div class="storefront-cards product-card-list template-cards position-relative h-100 flex{% if not product.stock > 0 %} out-of-stock{% endif%}" data-id="{{product.id}}" justify-content="space-between" align-items="center">
  <div class="product-card-list-highlights flex position-relative h-100" align-items="center" justify-content="space-between" direction="column">
    <div class="list-button-quickview position-absolute flex" align-items="center" justify-content="center">
      <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" class="button-quickview button-style-secondary flex btn btn-secondary" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
        <span>
          <i class="fa-duotone fa-eye">
          </i>
        </span>
      </a>
    </div>
    {% if wishlist.status %}
    <div class="wishlist flex position-absolute" align-items="center">
      <button data-pid="{{ product.id }}" type="button" class="btn-wishlist">
        <i class="{{wishlist.icon}}"> 
        </i>
      </button>
    </div>
    {% endif %}
    <a href="{{product.url}}" title="{{product.name|raw}}" class="w-100 h-100 product-link product-card-list-link position-relative" direction="{{card_direction}}">
      {% if product.rating %}
      <div class="product-card-rating">
        {% include 'snippets/collection/product-card-rating.tpl' %}
      </div>
      {% endif %}
      <figure class="flex product-card-list-thumbnail text-center w-100 position-relative" align-items="flex-start">
        <img class="img-fluid product-primary-img" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{image_default.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{image_default.thumb_src}}"  alt="{{product.name|raw}}" {% if secondary_image %}{% endif%}/>
        {% if secondary_image %}
        <img class="img-fluid product-secondary-img position-absolute" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{secondary_image.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{secondary_image.thumb_src}}"  alt="{{product.name|raw}}"/>
        {% endif %}
      </figure>
      {% if product.price.count_down is defined %}
      {% include 'product/snippets/count_down.tpl' %}
      {% endif %}
    </a>
  </div>
  <div class="product-card-list-information h-100 flex" direction="column">
    {% if discount>0 and product.price.sale > 0%}
    <div class="discount-chip position-absolute flex">
      <span class="discount-value">-{{discount}}%
      </span>
    </div>
    {% endif %}
    {% if card_direction == "row" %}
    <div class="list-only w-100">
      <div class="product-card-list-title">
        <a class="link-name" href="{{product.url}}">{{product.name|raw}}
        </a>
        <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" class="quickview-mobile" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
          <span>
            <i class="fa-duotone fa-eye">
            </i>
          </span>
        </a>
      </div>
      {% if product.model %}
      <div class="produto_modelo_marca" itemprop="brand" itemscope itemtype="http://schema.org/Brand">
        <b>Modelo/Marca:
        </b>&nbsp;
        <a href="{{ product.model.url }}">
          <span id="produto_modelo_marca" itemprop="brand">{{ product.model|raw }}</span>
        </a>
      </div>
      {% endif %}
      {% if product.manufacturer %} 
      <div class="produto_fabricante flex" wrap="true" align-items="center" >
        <span class="produto_fabricante_label">Fabricante:
        </span>
        <a title="{{ product.manufacturer.name|raw }}" href="{{ product.manufacturer.url }}" class="hiperlink flex">{{ product.manufacturer.label|raw }}</a>
      </div>
      {% endif %}
      {{ product.manufacturer.label|raw }}
      {{ product.model|raw }}
      <div class="product-card-list-sku">{{product.sku}}</div>
    </div>
    {% else %}
    <div class="product-card-list-title grid-only w-100">
      <a class="link-name" href="{{product.url}}">{{product.name|raw}}
      </a>
      <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" class="quickview-mobile" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
        <span>
          <i class="fa-duotone fa-eye">
          </i>
        </span>
      </a>
    </div>
    {% endif %}
    <ul class="product-card-list-marks flex" align-items="center" wrap="true">
      {% if product.marks.new %}
      <li class="mark-new">
        <span>{{ variables.cms_grade_produtos.cms_txt_lancamento |raw }}
        </span>
      </li>
      {% endif %}
      {% if product.marks.hotdeal %}
      <li class="mark-hotdeal">
        <span>{{ variables.cms_grade_produtos.cms_txt_oferta |raw }}
        </span>
      </li>
      {% endif %}
      {% if product.marks.exclusive %}
      <li class="mark-exclusive">
        <span>{{ variables.cms_grade_produtos.cms_txt_exclusivo |raw }}
        </span>
      </li>
      {% endif %}
      {% if product.free_shipping %}
      <li class="mark-free-shipping">
        <span>{{ variables.cms_grade_produtos.cms_txt_freeshipping |raw }}
        </span>
      </li>
      {% endif %}
      {% if product.immediate_delivery %}
      <li class="immediate-delivery">
        <a href="javascript:void(0)" data-fancybox data-type="ajax" data-src="{{ goto.immediate_delivery }}">
          <span>{{ variables.cms_grade_produtos.cms_txt_delivery |raw }}
          </span>
        </a>
      </li>
      {% endif %}
    </ul>
    <div class="product-card-list-sales-data flex h-100" direction="column" justify-content="space-between">
      {% if not product.show_price %}
      <div class="product-card-list-price-blocked flex" direction="row" wrap="false">
        <div class="icon-block">
          <i class="fa-duotone fa-lock">
          </i>
        </div>
        <div class="text">
          <b>Faça Login/Cadastro
          </b>
          <br>para ter acesso ao preço deste produto.
        </div>
      </div>
      {% else %}
      <div class="product-card-list-price">
        <div class="currentPrice" data-element="price">
          {% include 'snippets/collection/product-card-price.tpl' %}
        </div>
      </div>
      {% endif %}
      {% if product.stock > 0 and product.price.list > 0 %}
      <div class="product-card-list-action position-relative w-100">
        {% include 'snippets/collection/product-card-action.tpl' %}
      </div>
      {% elseif product.price.list > 0 %}
      <div class="chip out-of-stock text-center flex" gap="10" align-items="center" justify-content="center">
        <i class="fas fa-times-circle">
        </i> Indisponível
      </div>
      {% endif %}
    </div>
  </div>
</div>
