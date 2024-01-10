{% set card_direction = paginate.type is defined and paginate.type=="list"?"row":"column"%}
{% set image_default = product.gallery.images|first  %}
{% set secondary_image = false %}
{% if product.gallery.hover and product.gallery.images[1] %}
{% set secondary_image = product.gallery.images[1] %}
{% endif%}
{% set discount = (100 - ((product.price.sale / product.price.list)*100))|round %}
{% if card_direction == "column" %}
<div class="storefront-cards collection-grid-card product-card-coverflow position-relative template-cards h-100 flex{% if not product.stock > 0 %} out-of-stock{% endif%}" direction="column" align-items="center" justify-content="between" data-id="{{product.id}}">
  <div class="cover-quickview-button position-absolute flex"  direction="column" align-items="center" justify-content="center">
    <a href="javascript:void(0)" onclick="closeFancybox();" data-fancybox data-type="ajax" class="button-quickview button-style-secondary btn btn-secondary flex" align-items="center" justify-content="center" data-src="{{url("product",{"pid":product.id,"quickview":true})}}">
      <span>
        <i class="fa-duotone fa-eye">
        </i>
      </span>
    </a>
    {% if product.price.count_down is defined %}
    {% include 'product/snippets/count_down.tpl' %}
    {% endif %}
  </div>
  <a href="{{product.url}}" title="{{product.name|raw}}" class="flex product-link w-100 h-100 position-relative" align-items="center" direction="{{card_direction}}">
    {% if card_direction == "row" %}
    <div class="position-absolute list-only flex w-100">
      <div class="product-card-coverflow-title flex text-center" justify-content="center"> 
        <span>{{product.name|raw}}</span>
      </div>
    </div>
    {% else %}
    <div class="position-absolute product-card-coverflow-title flex text-center grid-only w-100" justify-content="center">
      <span>{{product.name|raw}}</span>
    </div>
    {% endif %}
    <figure class="flex product-card-coverflow-thumbnail text-center w-100 position-relative" direction="column" align-items="center">
      <img class="img-fluid first-image product-primary-img" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{image_default.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{image_default.thumb_src}}"  alt="{{product.name|raw}}" {% if secondary_image %}data-image-type="main"{% endif%}/>
      {% if secondary_image %}
      <img class="img-fluid second-image product-secondary-img position-absolute" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{secondary_image.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{secondary_image.thumb_src}}"  alt="{{product.name|raw}}"/>
      {% endif %}
    </figure>
    {% if discount>0 and product.price.sale > 0%}
    <div class="discount-chip position-absolute flex" wrap="true">
      <span class="discount-value">-{{discount}}%
      </span>
    </div>
    {% endif %}
  </a>
  <div class="coverflow-foot flex w-100 h-100 position-absolute" justify-content="space-between" align-items="center">
    {% if product.show_price %}
    <div class="product-card-coverflow-price">
      <div class="currentPrice" data-element="price">
        {% include 'snippets/collection/product-card-price.tpl' %}
      </div>
    </div>
    {% endif %}
    {% if product.stock > 0 and product.price.list > 0 %}
    <div class="product-card-coverflow-action h-100 flex" align-items="center">
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
{% endif %}
