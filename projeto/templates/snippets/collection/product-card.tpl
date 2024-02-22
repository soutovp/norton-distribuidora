{% set card_direction = paginate.type is defined and paginate.type=="list"?"row":"column"%}
{% set image_default = product.gallery.images|first  %}
{% set secondary_image = false %}
{% if product.gallery.hover and product.gallery.images[1] %}
{% set secondary_image = product.gallery.images[1] %}
{% endif%}
{% set discount = (100 - ((product.price.sale / product.price.list)*100))|round %}
{% if card_direction == "column" %}
<div class="storefront-cards collection-grid-card product-card position-relative template-cards flex{% if not product.stock > 0 %} out-of-stock{% endif%}" direction="column" justify-content="space-between" data-id="{{product.id}}">
<style>
  #product-card-quickview{
    position: relative;
    top: 5%;
    left: 30%;
  }
  #button-quickview{
    display: none;
  }
</style>  
<div class="product-card-quickview position-absolute flex" id="product-card-quickview" direction="column" align-items="center" justify-content="center">
    <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" id="button-quickview" class="button-quickview button-style-secondary btn btn-secondary flex" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
      <span>
        <i class="fa-duotone fa-eye">
        </i>
      </span>
    </a>
    {% if product.price.count_down is defined %}
      {% include 'product/snippets/count_down.tpl' %}
    {% endif %}
  </div>
  {% if discount>0 and product.price.sale > 0%}
  <div class="discount-chip position-absolute flex" wrap="true">
    <span class="discount-value">{{discount}}% de Desconto
    </span>
  </div>
  {% endif %}
  <a href="{{product.url}}" title="{{product.name|raw}}" class="flex product-link w-100 position-relative" align-items="center" justify-space="between" direction="{{card_direction}}">
    <figure class="flex product-card-thumbnail text-center w-100 position-relative" direction="column" align-items="center">
      <img class="img-fluid product-primary-img" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{image_default.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{image_default.thumb_src}}"  alt="{{product.name|raw}}"/>
      {% if secondary_image %}
      <img class="img-fluid product-secondary-img position-absolute" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{secondary_image.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{secondary_image.thumb_src}}"  alt="{{product.name|raw}}"/>
      {% endif %}
    </figure>
  </a>
  <div class="card-body flex" wrap="true" align-items="center">
    {% if card_direction == "row" %}
    <div class="list-only flex w-100">
      <div class="product-card-title flex text-center" justify-content="center">
        <a href="{{product.url}}">{{product.name|raw}}</a>
      </div>
      <div class="product-card-sku">{{product.sku}}</div>
    </div>
    {% else %}
    <div class="product-card-title flex text-center grid-only w-100" justify-content="center">
      <a id="norton-product-card-title" href="{{product.url}}">{{product.name|raw}}</a>
    </div>
    {% endif %}
    {# <div class="product-card-rating-buttons flex w-100">
      {% if product.rating %}
      <div class="product-card-rating flex" direction="row" wrap="false" align-items="center" justify-content="center">
        {% include 'snippets/collection/product-card-rating.tpl' %}
      </div>
      {% endif %}
      {% if wishlist.status %}
      <div class="wishlist flex" align-items="center">
        <button data-pid="{{ product.id }}" type="button" class="btn-wishlist">
          <i class="{{wishlist.icon}}"> 
          </i>
        </button>
      </div>
      {% endif %}
      <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" 		class="quickview-mobile" align-items="center" justify-content="center" data-src="{{url("product",	{"pid":product.id,"quickview":true})}}">
        <span>
          <i class="fa-duotone fa-eye">
          </i>
        </span>
      </a>
    </div> #}
    <ul class="product-card-marks position-absolute flex" direction="column">
      {% if product.marks.new %}
      <li class="mark-new text-center">
        <span>{{ variables.cms_grade_produtos.cms_txt_lancamento |raw }}
        </span>
      </li>
      {% endif %} {% if product.marks.hotdeal %}
      <li class="mark-hotdeal text-center">
        <span>{{ variables.cms_grade_produtos.cms_txt_oferta |raw }}
        </span>
      </li>
      {% endif %} {% if product.marks.exclusive %}
      <li class="mark-exclusive text-center">
        <span>{{ variables.cms_grade_produtos.cms_txt_exclusivo |raw }}
        </span>
      </li>
      {% endif %}
    </ul>
    <div class="product-card-information-add">
      {% if product.free_shipping %}
      <div class="mark-free-shipping">
        <span>{{ variables.cms_grade_produtos.cms_txt_freeshipping |raw }}
        </span>
      </div>
      {% endif %}
      {% if product.immediate_delivery %} 
      <div class="immediate-delivery">
        <a href="javascript:void(0)" data-fancybox data-type="ajax" data-src="{{ goto.immediate_delivery }}">
          <span>{{ variables.cms_grade_produtos.cms_txt_delivery |raw }}
          </span>
        </a>
      </div>
      {% endif %}
    </div>
  </div>
  <div class="foot-card flex" direction="column" justify-content="center">
    {% if not product.show_price %}
    <div class="product-card-price-blocked flex" direction="row" wrap="false">
      <div class="icon-block">
        <i class="fas fa-lock fa-2x">
        </i>
      </div>
      <div class="text">
        <b>Faça Login/Cadastro</b>
        <br>para ter acesso ao preço deste produto.
      </div>
    </div>
    {% else %}
    {# PREÇO DO PRODUTO ================================================= #}
    <div class="product-card-price">
      <div class="currentPrice" data-element="price">
        {% include 'snippets/collection/product-card-price.tpl' %}
      </div>
    </div>
    {# ================================================================== #}
    {% endif %}
    {% if product.stock > 0 and product.price.list > 0 %}
      <div class="product-card-action w-100">
        {{ include('snippets/collection/product-card-action.tpl', {actionType:cardType})}}
      </div>
      {% elseif product.price.list > 0 %}
        <div class="chip out-of-stock text-center flex" align-items="center" justify-content="center">
          <i class="fas fa-times-circle">
          </i> Indisponível
        </div>
        {% endif %}
        {# DISCONTO PROGRESSIVO ============================================= #}
        {% if product.price.rules is defined %}
          {% include 'product/snippets/progressive_discount.tpl' %}
        {% endif %}
        {# ================================================================== #}
      </div>
    </div>
    {% else %}
      {% include 'snippets/collection/category_card_list.tpl' %}
    {% endif %}
