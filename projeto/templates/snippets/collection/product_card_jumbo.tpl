{% set card_direction = paginate.type is defined and paginate.type=="list"?"row":"column"%}
{% set image_default = product.gallery.images|first  %}
{% set secondary_image = false %}
{% if product.gallery.hover and product.gallery.images[1] %}
{% set secondary_image = product.gallery.images[1] %}
{% endif%}
{% set discount = (100 - ((product.price.sale / product.price.list)*100))|round %}
{% if card_direction == "column" %}
<div class="storefront-cards product-card-jumbo template-cards position-relative h-100 flex{% if not product.stock > 0 %} out-of-stock{% endif%}" direction="row" justify-content="space-between" data-id="{{product.id}}">
  <div class="jumbo-links-images flex position-relative" align-items="center" justify-content="center">
    <div class="button-quickview position-absolute flex" align-items="center" justify-content="center">
      <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" class="button-quickview button-style-secondary flex btn btn-secondary" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
        <span>
          <i class="fa-duotone fa-eye">
          </i>
        </span>
      </a>
    </div>
    <a href="{{product.url}}" title="{{product.name|raw}}" class="flex product-link product-jumbo-link w-100 h-100" align-items="center" justify-content="space-between" direction="row">
      <figure class="flex product-card-thumbnail text-center w-100 position-relative gallery-jumbo" align-items="center">
        <img class="jumbo-primary-img img-fluid product-primary-img" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{image_default.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{image_default.thumb_src}}"  alt="{{product.name|raw}}"/>
        {% if secondary_image %}
        <img class="jumbo-secondary-img img-fluid product-secondary-img position-absolute" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{secondary_image.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{secondary_image.thumb_src}}" alt="{{product.name|raw}}"/>
        {% endif %}
        {% if discount>0 and product.price.sale > 0%}
        <div class="discount-chip position-absolute flex" wrap="true">
          <span class="discount-value">-{{discount}}%
          </span>
        </div>
        {% endif %}
        {% if product.price.count_down is defined %}
        {% include 'product/snippets/count_down.tpl' %}
        {% endif %}
      </figure>
    </a>
  </div>
  <div class="foot-card flex" align-items="flex-start">
    {% if wishlist.status %}
    <div class="jumbo-wishlist wishlist flex position-absolute" align-items="center">
      <button data-pid="{{ product.id }}" type="button" class="btn-wishlist">
        <i class="{{wishlist.icon}}">
        </i>
      </button>
    </div>
    {% endif %}
    <div class="card-body flex" direction="column">
      {% if card_direction == "row" %}
      <div class="list-only w-100">
        <div class="product-card-title">
          <a href="{{product.url}}">{{product.name|raw}}
            {% if product.description_small %}
            <p>{{ product.description_small|raw }}</p>
            {% endif %}
          </a>
        </div>
        <div class="product-card-sku">{{product.sku}}</div>
      </div>
      {% else %}
      <div class="product-card-title grid-only w-100">
        <a href="{{product.url}}">{{product.name|raw}}
          {% if product.description_small %}
          <p>{{ product.description_small|raw }}</p>
          {% endif %}
        </a>
      </div>
      {% endif %}
      <div class="product-card-rating-buttons flex w-100">
        {% if product.rating %}
        <div class="product-card-rating flex" direction="row" wrap="false" align-items="center">
          {% include 'snippets/collection/product-card-rating.tpl' %}
        </div>
        {% endif %}
        <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" class="quickview-mobile" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
          <span>
            <i class="fa-duotone fa-eye">
            </i>
          </span>
        </a>
      </div>
      <ul class="product-card-marks">
        {% if product.marks.new %}
        <li class="mark-new">
          <span>{{ variables.cms_grade_produtos.cms_txt_lancamento |raw }}
          </span>
        </li>
        {% endif %} {% if product.marks.hotdeal %}
        <li class="mark-hotdeal">
          <span>{{ variables.cms_grade_produtos.cms_txt_oferta |raw }}
          </span>
        </li>
        {% endif %} {% if product.marks.exclusive %}
        <li class="mark-exclusive">
          <span>{{ variables.cms_grade_produtos.cms_txt_oferta |raw }}
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
    </div>
    {% if not product.show_price %}
    <li class="product-card-price-blocked flex" direction="row" wrap="true">
      <div class="icon-block">
        <i class="fas fa-lock fa-2x">
        </i>
      </div>
      <div class="text">
        <b>Faça Login/Cadastro
        </b>
        <br>para ter acesso ao preço deste produto.
      </div>
    </li>
    {% else %}
    <div class="product-card-price">
      <div class="currentPrice" data-element="price">
        {% include 'snippets/collection/product-card-price.tpl' %}
      </div>
    </div>
    {% endif %}
    <div class="foot-buttons flex w-100" justify-content="space-between">
      {% if product.stock > 0 and product.price.list > 0 %}
      <div class="product-card-action w-100">
        {{ include('snippets/collection/product-card-action.tpl', {actionType:cardType})}}
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
{% endif %}
